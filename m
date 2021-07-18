Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id B07B13CCA10
	for <lists+blinux-list@lfdr.de>; Sun, 18 Jul 2021 19:38:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626629894;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uxQ4ZzVYvSJEKgFFks1FQkdZe9bgMGk/H2MxyWdaSPE=;
	b=IcWCUUF/3mHmGJO3yrmYS606Ks8n529lg34Eih/fdd+DMApSOYOYAFNPa0VSDMqzoOvzIR
	czLc6wEmxOnTpA2wJBd1J9L61+eW4hG158VPuBRT/o47K45M9KjJnn9XXEYB8X+j8EtcvZ
	353Gg1mu0iDcNENO5yvhUFrN4iIyvcA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-219-GrZDbO3VMCiSAUFw5daG0g-1; Sun, 18 Jul 2021 13:38:13 -0400
X-MC-Unique: GrZDbO3VMCiSAUFw5daG0g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BE44C804302;
	Sun, 18 Jul 2021 17:38:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 72A7C100EBAD;
	Sun, 18 Jul 2021 17:38:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5CD061809C9A;
	Sun, 18 Jul 2021 17:38:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16IHaxBj024951 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 18 Jul 2021 13:36:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1B32F2023A07; Sun, 18 Jul 2021 17:36:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1702C2023A05
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 17:36:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 98DEA8007BB
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 17:36:56 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-514-q7voQb_oOaCxUBtBJjXi5g-1; Sun, 18 Jul 2021 13:36:54 -0400
X-MC-Unique: q7voQb_oOaCxUBtBJjXi5g-1
Received: by mail-qt1-f179.google.com with SMTP id w26so11325463qto.9
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 10:36:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=pOgJO25LzyasChsDrmW7WpHM2CLx/7lKC99LuCKHaao=;
	b=fYcARrM3cbKE1ltzRcPUfzZNvQ5NrCWtzP/nEl42HdSK+d4N1o+GqBSZJPLuGZlblg
	ykJkXb3FXSpw98eOOEndlVzMLwGJrnuc2rvNYPBkx8z1nMTkpwGJknoV8j/gq9TdlOEq
	+HGUrmn00FMloDomtNn5LaDegLZsHVYVf4XqvcxWrCdoOUMybvmkWmK89u1BJtz4Zpmc
	k+2268y/EtVuJlPWrPohgf+ckJs1NIq5H8fZ9UWSv1sCjNL+0kz3Z4fMaDVaIIlGNFVT
	h3EHQ8NmVeifI28yW+6YrOgxQ2ijiwf80nNsiFcNpGm2Wp4SmAbHkxIKkBPB2kydgiEH
	gD9g==
X-Gm-Message-State: AOAM533IQpP1Z2rCfyEzAdyknL9sKlI2YvM0OpNYqNm6P+d/5ZeZ8c/t
	50YLovl0RF5tRh/w16SPOaQsq26uy2pRXNBRSCLV/p6jtDM=
X-Google-Smtp-Source: ABdhPJyCQM97Zx4r9yoSKtq6kTvJ93KFYTlNzIhEDeW51jiP2+sqAxE4zDwh+cN9QGAZB0xMAns3gawo5/aASPlLfZQ=
X-Received: by 2002:ac8:5401:: with SMTP id b1mr19047976qtq.112.1626629813560; 
	Sun, 18 Jul 2021 10:36:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:e084:0:0:0:0:0 with HTTP; Sun, 18 Jul 2021 10:36:52
	-0700 (PDT)
In-Reply-To: <CAD_4ddQakvfMrjcA4gbcNGxMesnV4Ac0xLe4w7-yzVpTGLC5yg@mail.gmail.com>
References: <alpine.NEB.2.23.451.2107181224250.27095@panix1.panix.com>
	<CAD_4ddQakvfMrjcA4gbcNGxMesnV4Ac0xLe4w7-yzVpTGLC5yg@mail.gmail.com>
Date: Sun, 18 Jul 2021 17:36:52 +0000
Message-ID: <CAO2sX32V4nhz4D1ZzvdNZmuB=3X-4hDZFOdvZCbYpJQxKKcaTg@mail.gmail.com>
Subject: Re: espeak-ng on archlinux
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It sounds like espeak-ng is working properly, but that you might be
mistaken about how the different components of the accessibility stack
work together.

espeak-ng is a speech synthesizer, it only speaks the text that is fed
to it. You could probably get it to read the output of another command
by piping that command's output to espeak-ng, but what you probably
want is a screen reader that will automatically feed text on the
screen to espeak-ng.

The most widely used options are probably to use espeakup to bridge
the speakup kernel module with espeak-ng or to configure Fenrir to use
espeak-ng as it's synth, though there are others, and sadly, I have no
experience manually setting any of these up on distros I'm familiar
with(Mostly Debian and it's derivatives) and no experience with Arch
at all.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

