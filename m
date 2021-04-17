Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id BF1F4362D01
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 04:55:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618628141;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=L5iDsQa++su2NwYwO1ZOuHMPbz92SRMeK2jSGxfpf0E=;
	b=EEfXPx+v1uDA21AVmBG562wNliAWJXErkUIur5XXq44xxKC3QaWHAZXwq4vouOV0ZKwLp8
	+GtWN5f+0Hn+EFnYPk7U/i/Jw4h2cA9ZnNqywuwRPMfJ6Tte64sDl6hrNIB/Xw1UAdAKhS
	ekLig0TmY0kGA6dK6mWJEWzLCVBrBE0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-60-0GB6Ce5WOdKDa7x4a_fjQw-1; Fri, 16 Apr 2021 22:55:39 -0400
X-MC-Unique: 0GB6Ce5WOdKDa7x4a_fjQw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 60AEC871377;
	Sat, 17 Apr 2021 02:55:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1912F6E405;
	Sat, 17 Apr 2021 02:55:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 45A1B1809C82;
	Sat, 17 Apr 2021 02:55:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13H2tPkg032604 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 22:55:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E164020FE6B3; Sat, 17 Apr 2021 02:55:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DCA0420FE6AE
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 02:55:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2279185A5A8
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 02:55:21 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-10-hbd61bESMu2J-1kKW5F3SQ-1; Fri, 16 Apr 2021 22:55:18 -0400
X-MC-Unique: hbd61bESMu2J-1kKW5F3SQ-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 5C4A8621C36; Sat, 17 Apr 2021 02:55:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 5971A621C27
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 22:55:17 -0400 (EDT)
Date: Fri, 16 Apr 2021 22:55:17 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: SL's response to all inquiries re: Readspeaker voices
In-Reply-To: <161862548310.8.16722362767692903606.5940024@slmail.me>
Message-ID: <Pine.LNX.4.64.2104162248250.2355208@server2.shellworld.net>
References: <161860978196.7.10178583994303054677.5934759@slmail.me>
	<161861134168.7.8725593548099427193.5935596@simplelogin.co>
	<161861745773.6.10221248550300079442.5937580@slmail.me>
	<2d84575-10dc-a8b6-d46d-60773d4fafc8@hubert-humphrey.com>
	<161861948053.7.16244801545361401537.5938331@simplelogin.co>
	<161862148227.7.18281104954975477453.5938888@slmail.me>
	<161862282677.7.2491104836224406595.5939316@simplelogin.co>
	<161862548310.8.16722362767692903606.5940024@slmail.me>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well,  perhaps? trying to save something in your word processor as a .txt 
file  and  see if there is an improvement?
The thing is that not everyone is reading your email in the same way, or 
using  the same tools.
saving  an email in text sort of behaves like a universal translator 
across platforms and email clients.
If  you can save things in .txt, without  making other major changes, it 
may be less complex for you.
Certainly, if you are not used to  Thunderbird..which I believe may be 
being discontinued.
Perhaps the small step first,
Kare



On Sat, 17 Apr 2021, Linux for blind general discussion wrote:

> I use LibreOffice on Slint. Its default seems to be .odf but you can save as rtf or txt.
> Didn't know you have to save it as .txt or .rtf before pasting it in an email.
> It is so strange because when I paste something from LibreOffice into an email, it will read as if everything is just fine. The only way I know that the formatting has been messed up, is unfortunately after it sends to Blinux, then when it is posted and I go to read it, it shows as jumbled format. I guess maybe the email provider does not process that it is odf text until after it sends. So maybe saving the file in Libreoffice as .txt first before pasting it in an email might make a difference.
> Anyways, to Kare and Chime, yes I use Graphical.
> I think Graphical may have Thunderbird for an email client. But I havn't set it up yet.
> In Windows I would just go direct to the web page of my email provider. Never really found the need to have my emails on a localized email client. So thats what I've done on Slint, just go to the email's web service as I have always done on Windows.
> But I wonder if setting up Thunderbird would make a difference?
> Totally new to this lol so I have not linked a text editor with an email client. But I could probably try setting up Thunderbird, and then linking that with Pluma as a text editor?
> Thanks,
> SL
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

