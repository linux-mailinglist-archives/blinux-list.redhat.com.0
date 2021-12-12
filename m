Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EF89947177C
	for <lists+blinux-list@lfdr.de>; Sun, 12 Dec 2021 02:14:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639271690;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4PV73ruS0KWRmU7vKS80rOtbv7mH3O4Mpv/BtbfGD9w=;
	b=Duna7TCVPoGTNIyje90UWalHZa8fGOEoNeSNagKqKHOlfmRCfqcDslTyAvrfVPNVE15Spf
	NLlQA5UYmE5gPGlRXMPHkV5V+50ozgE6rOdzEVMLizeOc8q2kS9XRgohxajzu2AekF2rFX
	3QQddsOXyrl77oOWsPnS1MMLF+aYagQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-31-pxCdhr9KNTm_hWhlQ7cbPQ-1; Sat, 11 Dec 2021 20:14:48 -0500
X-MC-Unique: pxCdhr9KNTm_hWhlQ7cbPQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B92D4801962;
	Sun, 12 Dec 2021 01:14:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 740F07AB68;
	Sun, 12 Dec 2021 01:14:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C2D564BB7B;
	Sun, 12 Dec 2021 01:14:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BC1EPrV014423 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 11 Dec 2021 20:14:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B344640C1241; Sun, 12 Dec 2021 01:14:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AED9B400E13B
	for <blinux-list@redhat.com>; Sun, 12 Dec 2021 01:14:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 96D8A185A79C
	for <blinux-list@redhat.com>; Sun, 12 Dec 2021 01:14:25 +0000 (UTC)
Received: from gateway9.unifiedlayer.com (gateway9.unifiedlayer.com
	[74.220.217.99]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-562-N9VMnSxZMui5J9MoFiXUPw-1; Sat, 11 Dec 2021 20:14:23 -0500
X-MC-Unique: N9VMnSxZMui5J9MoFiXUPw-1
Received: from cm1.websitewelcome.com (unknown [192.185.0.102])
	by gateway9.unifiedlayer.com (Postfix) with ESMTP id A06612009912A
	for <blinux-list@redhat.com>; Sat, 11 Dec 2021 19:14:21 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id wDRVmKWRkv5IUwDRVmqs4J; Sat, 11 Dec 2021 19:14:21 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:10015 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1mwDRV-0015gM-B5
	for blinux-list@redhat.com; Sat, 11 Dec 2021 19:14:21 -0600
Date: Sat, 11 Dec 2021 19:14:19 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Ignoring hard wrapping when doing copy and paste.
Message-ID: <20211211191419.48ec5612@bigbox.attlocal.net>
In-Reply-To: <CAO2sX33xFEVcratw7R8jfbHY5v7LtCGkHbj3u91fXWTdBsnp4w@mail.gmail.com>
References: <CAO2sX33xFEVcratw7R8jfbHY5v7LtCGkHbj3u91fXWTdBsnp4w@mail.gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 76.222.220.222
X-Source-L: No
X-Exim-ID: 1mwDRV-0015gM-B5
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:10015
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  The easiest way I know to reflow lines like that is to
pipe them through fmt(1), specifying a humongous line-width like

  fmt -w99999

If you have the content in your clipboard, you can use xsel or
xclip to pipe it out to fmt(1) and back into the clipboard like

  $ xsel -ob | fmt -w99999 | xsel -ib

before pasting it into Firefox (or email or whatever).  If you use it
frequently, it could be wrapped up in a shell-script or a hot-key in
your window-manager.

Does that do the trick for you?

-Tim

On December 12, 2021, Linux for blind general discussion wrote:
> Okay, so my text editing environment of choice is Nano running in
> the Linux Console, and I'm constantly using the justify function to
> hard wrap text because lines wider than the screen are difficult to
> work with.
> 
> If I need to post something I wrote in nano online, but can't just
> upload the .txt, I'll save, close nano, switch to tty1 where I
> usually have Firefox running in a stripped down xserver, open the
> text file in Firefox, and copy and paste into the text box.
> 
> >From my perspective, everything works fine, but I've gotten
> >complaints  
> from sighted users about the extra line breaks from the hardwrapping
> making text posted in this manner hard to read.
> 
> Is there a way to make Firefox ignore the hard wrapping when copying
> text from a hardwrapped text file to a web form, or failing that, an
> easy means of copying a hardwrapped text file to an unwrapped text
> file?
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

