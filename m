Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E7A60E75
	for <lists+blinux-list@lfdr.de>; Sat,  6 Jul 2019 04:03:07 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D75673082AED;
	Sat,  6 Jul 2019 02:03:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2FF751001B2F;
	Sat,  6 Jul 2019 02:03:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0908318184B6;
	Sat,  6 Jul 2019 02:03:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x6622tM1014649 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 5 Jul 2019 22:02:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9EA66909F5; Sat,  6 Jul 2019 02:02:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx04.extmail.prod.ext.phx2.redhat.com
	[10.5.110.28])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 98A2F18BBA
	for <blinux-list@redhat.com>; Sat,  6 Jul 2019 02:02:53 +0000 (UTC)
Received: from gateway8.unifiedlayer.com (gateway8.unifiedlayer.com
	[69.89.28.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D039185543
	for <blinux-list@redhat.com>; Sat,  6 Jul 2019 02:02:51 +0000 (UTC)
Received: from cm6.websitewelcome.com (cm6.websitewelcome.com [108.167.139.19])
	by gateway8.unifiedlayer.com (Postfix) with ESMTP id 2F7602008FD93
	for <blinux-list@redhat.com>; Fri,  5 Jul 2019 21:02:51 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id ja2Mh1KaR7Mgvja2MhFeG7; Fri, 05 Jul 2019 21:02:51 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=thechases.com; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=+q3QDW14jf5jWfqSP63RPlBbLoPrxHK2wOvSiGlys9w=;
	b=BUjQkiqv9uO2RaSUrg4PhaZ22y
	vvNDyFOP7zV2ZTZuGxeo8uK+NNZp3ljDGcWjUQC/xIiiVuEdQv5iwNNpRhwaXcbAjy8iVjuDIKinr
	FvmoHq6zMNM7WuWbQR0XPrEz82drNBaEQ+MIx0WmJf95dfVJyyhhgjaVWxfwuEbz7wO3jsN7DgeTb
	xICTRUhPHssYb9tMcBZvb96xo0dM8vHsplYWE3MA/ggYfjuHpYRjPw1Ue9GDntdaZlEpAiRugdhHa
	Y4hiBquenMl7gldfRzZv2meW5ULWyAuJX2bc7jbNOWvFeZznOMwMXbyUu3nuowE+ZpeJ7h9Hd6L1Z
	jSMLpQeg==;
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:33640 helo=bigbox.christie.dr)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1hja2M-003oZq-N2
	for blinux-list@redhat.com; Fri, 05 Jul 2019 22:02:50 -0400
Date: Fri, 5 Jul 2019 21:02:49 -0500
To: blinux-list@redhat.com
Subject: Re: Some keyboard questions: Re: Need a memory refresh
Message-ID: <20190705210249.511ac780@bigbox.christie.dr>
In-Reply-To: <20190706011458.GA12681@abilitiessoft>
References: <20190705213906.GA11497@abilitiessoft>
	<20190705165711.342e4e48@bigbox.christie.dr>
	<20190706011458.GA12681@abilitiessoft>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1hja2M-003oZq-N2
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.christie.dr) [172.0.250.193]:33640
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 216
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.28]); Sat, 06 Jul 2019 02:02:52 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.28]);
	Sat, 06 Jul 2019 02:02:52 +0000 (UTC) for IP:'69.89.28.10'
	DOMAIN:'gateway8.unifiedlayer.com' HELO:'gateway8.unifiedlayer.com'
	FROM:'blinux.list@thechases.com' RCPT:''
X-RedHat-Spam-Score: 0.2  (DKIM_INVALID, DKIM_SIGNED, RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,
	SPF_PASS) 69.89.28.10 gateway8.unifiedlayer.com 69.89.28.10
	gateway8.unifiedlayer.com <blinux.list@thechases.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.28
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]); Sat, 06 Jul 2019 02:03:05 +0000 (UTC)

Tim again.

The first thing I'd check is what shell is specified for each user:

 $ for u in john demo test ; do awk -F: '$1=="'"$u"'"{print $1,
 $NF}' /etc/passwd; done

This should print out the shell for each of those three users (john,
demo, test).

If one of them is different, you should be able to use "chsh" as the
aberrant user to change to your preferred shell as found
in /etc/shells

My next stop would be to check the shell RC files such as your
~/.bashrc or ~/.bash_profile or ~/.profile for each of the users.  I
don't have a good one-liner for diagnosing this, but if you auto-start
tmux/screen in some and don't auto-start it in others, that might be
an issue.  It's hard to tell from your description, but it might just
be a matter of the $PS1 prompt string displaying something
unexpected, so you might also check what that's set to for each
account.

If the keyboard becomes unresponsive, have you perhaps hit control+S
which can be a flow-control character (XON/XOFF)?  If so, try typing
control+Q to resume flow.  This might also be a matter of your "stty"
setting for flow-control differing between the accounts.  Look for
lines in your shell startup files containing "stty" and see if any
refer to "ixon" or "ixoff" or use the following in each shell to see
what the flow-control is set to:

  $ stty -a | grep -o -e '-*ixo[^ ]*'

That should produce two lines, one for "ixon" and one for "ixoff",
each optionally preceded by a minus-sign to show whether the setting
is on or off.  I think that if they're on (no minus sign), the
terminal treats control+S and control+Q as flow control characters;
if you turn them off (`stty -ixon -ixoff` which you could put in
your startup file) then the terminal should ignore them as
flow-control characters preventing future problems.

Here's hoping one of those points you in the right direction.

-tim


On July  5, 2019, Linux for blind general discussion wrote:
> John Boyer here.
> 
> Thanks for all the memory refreshing. I've decided to use different
> consoles for different users via ctrl+alt+Fn, so i can run screen
> in each user. For one of the additional users screen behaves
> normally, but for the other it shows /bin/bash . Incidentally, I am
> using BRLTTY. it works fine. 
> 
> Sometimes the keyboard becomes totally unresponsive, but BRLTTY
> still responds to keys on the Braille display. I've just been doing
> a cold reboot. Suggestions appreciated.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
