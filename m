Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9E768B43E
	for <lists+blinux-list@lfdr.de>; Mon,  6 Feb 2023 03:51:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675651903;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wbc3F3JI9iZ8iXLiRvIhlX8gtDRxuKvzSPJ4POz43nk=;
	b=jALOb+WwWfrFkdXbMQS4ZbCoi19l5zXyi6Hb0C4peryP/+o5Ln/6nOdMZmdERaXk3Q7Xmc
	1F8Hy6mZmY7w3FN1Fz4vIAucvoCckvjw4tYNZDbf9e8p7Q6i7mG6qMP59OM8m528hJa5DL
	MqPicz/kJ1bhV83IMSo0606MkFs0ULI=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-447-ExNuEb1SM1KNcZhtG8D_nw-1; Sun, 05 Feb 2023 21:51:39 -0500
X-MC-Unique: ExNuEb1SM1KNcZhtG8D_nw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 672531C29D45;
	Mon,  6 Feb 2023 02:51:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D6F57400EAB9;
	Mon,  6 Feb 2023 02:51:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 17F1E1946597;
	Mon,  6 Feb 2023 02:51:15 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: Getting DavMail to Work in the Gnome Desktop
In-reply-to: <mailman.4278.1675636403.8172.blinux-list@redhat.com>
References: <mailman.3943.1675628072.8168.blinux-list@redhat.com>
 <mailman.4278.1675636403.8172.blinux-list@redhat.com>
Comments: In-reply-to Linux for blind general discussion
 <blinux-list@redhat.com>
 message dated "Sun, 05 Feb 2023 12:29:57 -1000."
MIME-Version: 1.0
Date: Sun, 05 Feb 2023 20:49:38 -0600
Message-ID: <mailman.4304.1675651874.8171.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-ID: <11658.1675651778.1@wb5agz.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Linux for blind general discussion <blinux-list@redhat.com> writes:
> It looks like the Microsoft365 server can deliver mail via
> IMAP, POP3 or their proprietary Exchage Web Server (EWS)
> protocols with EWS as the default since 2020.

	I believe that is what this is, EWS.

> I'm not sure why you're attracted to DavMail. I hope
> you've checked the bug tracker.

> https://sourceforge.net/p/davmail/support-requests/

I have looked at it now and see what you mean.

	I am not opposed to trying new things at all but I have
been using a very old mail system over the last 25 years called
nmh which is based on the Rand Corporation's mh or "Message
Handler" that became free open-source years ago.

	Rather than being a monolithic mail program, it is a
bunch of separate unix applications such as comp to compose
messages, show to-- yes, you guessed it, show you a message or
range of messages, refile and other applications one needs in a
mail handler.

	It works great on any ASCII text console and it is so old
and crude that one can open any message your heart desires
without worrying about executable code since the viewer can be
lynx or vi.

	It's also nice to have a modern user agent for those
messages that have javascript and other executable capabilities
which one can use on trusted messages.  I want to keep some of
these capabilities and so I was hoping to be able to use that
system on mail I would receive via MS365.
> 
> Evolution is a mail client that is integrated with Gnome,
> and has a setting to select EWS for connecting with 365.
> 
> This link may be helpful for configuring Evolution.
> 
> https://sites.utexas.edu/glenmark/2021/02/01/how-to-setup-your-office-365-email-using-evolution-ews-linux/
> 
	I appreciate that link because I actually have that
article saved on this system.  
> If that doesn't suit you, another solution would be to
> cobble together a script to download the messages and
> deliver them to /var/spool/mail/username for any mail
> client to use.

	That has certainly crossed my mind a lot recently.

	I really appreciate your taking the time to respond since
it looks like maybe I should not be so excited about davmail
after all but that there are still possible solutions.

> In Python, the ExchangeLib module can download mail from an
> EWS server, offers sample code, and has a recent release.
> https://pypi.org/project/exchangelib/
> https://github.com/ecederstrand/exchangelib/issues
> 
> Disclaimer: I've not used this library and know little about Python.

	I am going to have to learn python, indentations and all
as I do know how to write code in perl and some C coding so I had
better keep pounding on this problem or nothing is going to
happen on it's own.

Martin

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

