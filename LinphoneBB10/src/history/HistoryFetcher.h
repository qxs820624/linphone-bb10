/*
 * HistoryFetcher.h
 * Copyright (C) 2015  Belledonne Communications, Grenoble, France
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 *
 *  Created on: 2 août 2015
 *      Author: Sylvain Berfini
 */

#ifndef HISTORYFETCHER_H_
#define HISTORYFETCHER_H_

#include <QThread>

#include "linphone/linphonecore.h"

// Needed to be able to store the message in the QVariant map
Q_DECLARE_METATYPE(LinphoneCallLog*);

class HistoryFetcher : public QThread
{
    Q_OBJECT

public:
    HistoryFetcher();
    void emitHistoryFetched(QVariantMap history, bool isMissed);

Q_SIGNALS:
    void historyFetched(QVariantMap history, bool isMissed);

protected:
    void run();
};

#endif /* HISTORYFETCHER_H_ */
