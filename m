Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E93746C592
	for <lists+blinux-list@lfdr.de>; Tue,  7 Dec 2021 22:00:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638910812;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9j50yj/oJWOFBb1eulLhFeth2BJIUKDXELf7W/hmkl4=;
	b=C1wpTGXpEtMdjNRxMQnbM1ET9G+eHFh2+pNAZIpfldeyhHeidoBosgJGXK5yKBLEikUQay
	MM2Cz4fN7LajtEHOt0DnD2XoBi19sUHEwvIWd02jS6XOvBe4S+Z2v63ULwxF/hOnvfP5Tz
	Vfnu7F0IFNs4fqF6JrQfJQZ2fNZQO48=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-437-rOtzPtdXMCOLh9y2NkKKlg-1; Tue, 07 Dec 2021 16:00:10 -0500
X-MC-Unique: rOtzPtdXMCOLh9y2NkKKlg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 88D3B93921;
	Tue,  7 Dec 2021 21:00:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB1BA1972E;
	Tue,  7 Dec 2021 20:59:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3DD104BB7B;
	Tue,  7 Dec 2021 20:59:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B7Kxbxi004596 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 7 Dec 2021 15:59:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5E8791121315; Tue,  7 Dec 2021 20:59:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 59F791121314
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 20:59:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6F974811E78
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 20:59:34 +0000 (UTC)
Received: from gateway11.unifiedlayer.com (gateway11.unifiedlayer.com
	[74.220.192.56]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-492-4E-1PNAHOQm1D9dzupH1rg-1; Tue, 07 Dec 2021 15:59:32 -0500
X-MC-Unique: 4E-1PNAHOQm1D9dzupH1rg-1
Received: from cm1.websitewelcome.com (unknown [192.185.0.102])
	by gateway11.unifiedlayer.com (Postfix) with ESMTP id CC0132009E4C6
	for <blinux-list@redhat.com>; Tue,  7 Dec 2021 14:59:29 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id uhYfm1yHbv5IUuhYfmZ5B2; Tue, 07 Dec 2021 14:59:29 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:53936 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1muhYf-0040rQ-HH
	for blinux-list@redhat.com; Tue, 07 Dec 2021 14:59:29 -0600
Date: Tue, 7 Dec 2021 14:59:28 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Using lynx to Dump a text file in to a Web Form
Message-ID: <20211207145928.5469e72b@bigbox.attlocal.net>
In-Reply-To: <E1muhNK-0007k7-8u@wb5agz.lan>
References: <E1muhNK-0007k7-8u@wb5agz.lan>
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
X-Exim-ID: 1muhYf-0040rQ-HH
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:53936
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  If your focus is on a text-entry field, using control-x
followed by control-e will save the content to a temporary file and
then open your configured editor (whether in your lynx configuration,
your $VISUAL environment variable, or falling back to your $EDITOR
environment variable) pointed at that file.  You can then merrily
edit the file. When you save & quit (or just quit without saving) the
file that was on disk will become the contents of the text-entry
field.

It also happens to be the same key-combination used in bash to invoke
your $EDITOR/$VISUAL on the command you're currently typing so you
can edit the command with the full power of that editor.

Hope this helps,

-Tim

On December  7, 2021, Linux for blind general discussion wrote:
> I once knew a key sequence one could run in a case of having a
> multi-line form such that one could dump a formatted text file in
> to that form.
> 
> 	I have forgotten what a person does but the case where
> this works is let's say, a situation where you are prompted to
> enter a message followed by a bunch of empty lines that fill as
> you type.
> 
> 	You type what to put in to those lines and then bring up
> the web page and go to the input form and then I think lynx
> prompts for the name of your text file and you type that in and
> off it goes.  One usually ends up with the basic format of your
> file neatly filling the form which you can then just send.
> 
> 	If lynx is the browser, what is the correct procedure to
> do this?
> 
> 	Thanks.
> 
> Martin McCormick
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

