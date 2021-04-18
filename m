Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CAA22363336
	for <lists+blinux-list@lfdr.de>; Sun, 18 Apr 2021 04:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618714756;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=s24Z8Q9DKEB/SClF0i9XWFZ0vd/7uVG9Iys/zjHo6qA=;
	b=SPAqozlLJgvce1MTH7wHMQUSqvRrVkQRBTOyu0g4WhLoTsQwxh+VLNTvGe8qT3KcKEsPlW
	fhek53AjWFg4UoSINASqK6Gbe9R/HeaOy+08hwFAC6VlL84rIP5Y/D55JY53E4YJTjgwuN
	2K59xP8WJDSCQIXB70yEOD3U9LyiFB8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-217-xOgG67XPOiW1KEOwJccAnw-1; Sat, 17 Apr 2021 22:59:14 -0400
X-MC-Unique: xOgG67XPOiW1KEOwJccAnw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 70800107ACE3;
	Sun, 18 Apr 2021 02:59:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 056935D9CD;
	Sun, 18 Apr 2021 02:59:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 23C431806D17;
	Sun, 18 Apr 2021 02:59:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13I2wvYi015340 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 22:58:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 77EDF2095BA6; Sun, 18 Apr 2021 02:58:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7160D2095BA1
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 02:58:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 22FE4805F07
	for <blinux-list@redhat.com>; Sun, 18 Apr 2021 02:58:52 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-559-h8STN0sHPu2nDVs02rA8Ig-1; Sat, 17 Apr 2021 22:58:49 -0400
X-MC-Unique: h8STN0sHPu2nDVs02rA8Ig-1
Received: by mail-qv1-f53.google.com with SMTP id i11so9833558qvu.10
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 19:58:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=4GZaIOSiYizfdmIAsTI3ZomDOUcENWdruw/AALSuG+0=;
	b=ODF45Z4t8K4w0XNkFpVFo6OVcVkvUN0Cr45MMuTLOLm1+FP4lw36+XlCN/KGuqKdbN
	fYaehH36LxOt6lT52Zl6o1AeTebcRCfvVegGtcyKjV79bxuc5B83yfcnGd9sNrcD3KDW
	Ambm72oQN2vleLJ0aXeNNxWGxZQ+L+yw6zlr4t5hWyeDyf++QbiVdU3cCsCNixb6OmnG
	IyUNfcYGZg7LiHmqd0Cpnq5J0DDLkMNG7Kx9e9wolqTHNZ8q4PRJLlfam1WKJLs9T2ry
	Qybw1k4y0f4/tEdMFcNIMcmdXoE6ur0mDrC0ZHAjmlgy7Ymcf7l6AMeyHSws4VFDkt+c
	/qrg==
X-Gm-Message-State: AOAM530y69mjuYtIGvyfUJFHemJNXlC/RuzahyPXWUsTADSw+2KM4LGb
	JX62p6glHR3EQr1yn8d2tZeZKmsX52oaAzNF7mnYiDroqsI=
X-Google-Smtp-Source: ABdhPJy88QwRHpgTcXcQQS1L8C1FvTJzhfeM0/cwbZNT/SRi/zb/UtB0Gf132wJiY6ZPBEHBWzYxnnONz8roOyGkMDg=
X-Received: by 2002:ad4:490f:: with SMTP id bh15mr15441154qvb.55.1618714729304;
	Sat, 17 Apr 2021 19:58:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:eb4e:0:0:0:0:0 with HTTP; Sat, 17 Apr 2021 19:58:48
	-0700 (PDT)
In-Reply-To: <20210418.010302.720.1@0.0.0.0>
References: <161866688954.6.12074603936546144678.5956995@simplelogin.co>
	<161870350119.8.17896736538043458897.5969450@slmail.me>
	<CAO2sX33vz_y4yBAAy7JDdv5PWmRoS_QvTXxV+ghoWpyuhuRSig@mail.gmail.com>
	<20210418.010302.720.1@0.0.0.0>
Date: Sun, 18 Apr 2021 02:58:48 +0000
Message-ID: <CAO2sX32fREfL2EFUKXXM=P8BvkvkP+2QhDMNkk=HOa4X_pjgyw@mail.gmail.com>
Subject: Re: Formatting - was Would you be interested in having natural
	sounding TTS voices by Readspeaker on Linux? demo link included
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'll admit, I haven't paid much attention to machine learning... but
then again, I get the impression that the training phase generally
requires a server farm worth of resources if you want to build
something that actually out performs oldschool algorithmic AI, and
that even once trained, you generally can't just export the end result
so it'll run on an end-user's machine... and I, for one, would hate to
have my TTS cut out just because my Internet connection glitches out.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

