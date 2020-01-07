Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id C57AC131D8B
	for <lists+blinux-list@lfdr.de>; Tue,  7 Jan 2020 03:20:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1578363640;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=T8Wv90qCacMbVttZi750h4RVqAuY3CYbnHV4muBdOJg=;
	b=VXsi72n1L2gihum1EB3uzh2UtiRDsByhv2Nyb/AVloUgJcuqITdhdB3Pw6MwcmFTPnKXec
	7Jey0fLjZ8Kr/BOYdn0wldlAwRGsWGM0j1HSMTNbFPkXJ3+WzxvUnH76ZBayUOThZDzcty
	VV3OJ/LI6WZEMAMObzTYULc/RDXCePc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-135-54_m1LL9MRSddiySlwWbFA-1; Mon, 06 Jan 2020 21:20:38 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DB545100550E;
	Tue,  7 Jan 2020 02:20:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B9F977BFFA;
	Tue,  7 Jan 2020 02:20:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D4C0381C69;
	Tue,  7 Jan 2020 02:20:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0072K7aX023603 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Jan 2020 21:20:07 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6A22D123CD5D; Tue,  7 Jan 2020 02:20:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 65178123CD5C
	for <blinux-list@redhat.com>; Tue,  7 Jan 2020 02:20:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1DEA5801E86
	for <blinux-list@redhat.com>; Tue,  7 Jan 2020 02:20:05 +0000 (UTC)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com
	[209.85.219.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-98-BrU0DZCONFm7znbX7JAdXw-1; Mon, 06 Jan 2020 21:20:03 -0500
Received: by mail-yb1-f169.google.com with SMTP id k128so11996388ybc.13
	for <blinux-list@redhat.com>; Mon, 06 Jan 2020 18:20:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:to:subject:date:mime-version
	:content-transfer-encoding;
	bh=dX8M+SPTrbIlGSQewgYUqqeB8sd87MPcpEuMIGHocrc=;
	b=X9beDOuABFO1hfm0MkR1oMMDfQIxKJ0Io/iHmOvgWjeL74FgJrcjvaDDWlUHw+AgA5
	Nev9Q2iMafKM+SWmqk+/nVgvpqKRngO7tyJiv9sUadzfpzIIawjr/c2w6F98qNsX1mca
	AGvf87KfXOHzNFmuGAbZuY1Mrx4XWdFZWs0uOpwGa5S5edRsn21qRBYg5dF6GcE8vGGu
	6+0dQpx7odQE1CNWjtKmdjJ9BnKZeLBD3xpKkD9yMJ3FNYFmUsRrURRMdfQwwZIW0eF8
	bgWl57np/Df606YMh7BidJcYpx4+c/W/jruOEedxfCI+q+yXYpcoKVN0EywbKLGy81T7
	3oqQ==
X-Gm-Message-State: APjAAAVBw69Q4MpWWfPSAhj/KYgiuzxJY04pnSlKCbqJG3MtAOTL68YG
	yYIHo1rxQ3TAm2ttlSHR8vZ6hNBy
X-Google-Smtp-Source: APXvYqymGrrVxWfiS7FSTzONpBxx7HtyATXQNw/K1kzujlJaW5W43su0vLta3ADl98cdBGlCM2WdyQ==
X-Received: by 2002:a25:483:: with SMTP id 125mr72775632ybe.146.1578363602430; 
	Mon, 06 Jan 2020 18:20:02 -0800 (PST)
Received: from [0.0.0.0] (24-220-234-87-dynamic.midco.net. [24.220.234.87])
	by smtp.gmail.com with ESMTPSA id
	d186sm29164049ywe.0.2020.01.06.18.20.01 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 06 Jan 2020 18:20:01 -0800 (PST)
Message-ID: <20200107.021828.169.22@[0.0.0.0]>
To: blinux-list@redhat.com
Subject: Slint: No Sound, Screen not in text mode
Date: Mon, 06 Jan 2020 20:18:28 -0600
MIME-Version: 1.0
X-MC-Unique: BrU0DZCONFm7znbX7JAdXw-1
X-MC-Unique: 54_m1LL9MRSddiySlwWbFA-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0072K7aX023603
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have installed the latest slint onto a hard drive, choosing
"start in graphical mode"
. Speech was available during install. However, I rebooted with my braille display attached, saw that ubiquitous
screen not in text mode
message, and there is no sound.
I attempted to get a console with ctrl+alt+f1-2-3. No console prompt appeared. Obviously it has started up, because the
screen not in text mode
would not be there otherwise.
During install, I chose the mate desktop, but I forget which window manager I chose.
Any tips for rescuing this situation would be appreciated.
Rob


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

