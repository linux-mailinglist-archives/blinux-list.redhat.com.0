Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E27D23D274D
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 18:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626970245;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uoZNc2Zp75caG/m1XDVAE/TmAdadjHVIF2akWyO6vtA=;
	b=ibfamlATbjtixPGd/dnAza+Km1njVQJLrLQM/ATvAdpS8+1SIJRrlMp/6txeVQzqsWSE5u
	P77oc3suG09bvvb8kGsFNquOe6hFIZ2NBYDuTYMR2TrkEVeWMPjIaA+rlvTQhzpmMLLkvC
	uCD/qRpWzKQnoeFYwRh35HjOu3wlsHM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-301-LshYCuq5Oy2ffKUmokDTwg-1; Thu, 22 Jul 2021 12:10:43 -0400
X-MC-Unique: LshYCuq5Oy2ffKUmokDTwg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 28B2680A5D2;
	Thu, 22 Jul 2021 16:10:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3080060936;
	Thu, 22 Jul 2021 16:10:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C7783180BAB2;
	Thu, 22 Jul 2021 16:10:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MGAARc028631 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 12:10:10 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 95E29108467; Thu, 22 Jul 2021 16:10:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9020C109942
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 16:09:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 06AA9188144D
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 16:09:59 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-518-kuwD8_CuP06r-Vp7we5vyA-1; Thu, 22 Jul 2021 12:09:56 -0400
X-MC-Unique: kuwD8_CuP06r-Vp7we5vyA-1
Received: by mail-wm1-f45.google.com with SMTP id n4so3659460wms.1
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 09:09:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=IaxtrcmSnXgaKyToWlurjkGOVwCe4jhbM/FSUrJI+FU=;
	b=DcU5DHmWhCHz6As0N8lrXhexzELeLlWgAlo1FK4gsljz+PP+Gc+fl0snBsrV13kdDf
	cnTauyYuzn1Z+UBysdmUCBdxeHhMxz7mBQHxYBRwYmVQ3u5gFKwgcSOqONO0NpDP92nZ
	OxFhcrVca8ETWjCjx9CyT6Q3YgKSL9kl01yCNvhW0kp7qGsFcmAfgOii81rNNQX4YQtC
	qsuuveVpynsOCzPDR2CaDjoS6UGOspaxY0xR7fnlC4WqJOu7visQ327hi+XHq4+v8BZu
	sr8q5ZV6GPD90zjWcwtTlCW8fd+U4NErHm8um8h9i0Y04uzx9FdpvEpHBA+EvduFb/pT
	wuYA==
X-Gm-Message-State: AOAM533gDDXuP60KUhkWYAmgy0coYDgqXfGXUaXfz6EEPZEp+OkRwDgP
	26ijb0fCI9c38eii9Ed1n/aznxLdnyiUbg==
X-Google-Smtp-Source: ABdhPJwnmAp7V6JaIB4QDGuGcjgvXlLPcUMhz7vORmT4XcAl399SGHcpWIDUqBgpgR2QKB6mpX824w==
X-Received: by 2002:a7b:c108:: with SMTP id w8mr330298wmi.99.1626970195287;
	Thu, 22 Jul 2021 09:09:55 -0700 (PDT)
Received: from localhost ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id k7sm2825486wms.48.2021.07.22.09.09.54
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 22 Jul 2021 09:09:54 -0700 (PDT)
Date: Thu, 22 Jul 2021 19:09:53 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A question about running emacspeak on Arch
Message-ID: <20210722160953.fxkwmhyhb3oxa6fh@alex-pc>
References: <CAD_4ddRiqb1QK=SuovMrM8OBGNJKuP6m=Wd+rqC6ykAY-ymRMg@mail.gmail.com>
	<20210722134626.jueyx7z7q7a4oska@alex-pc>
	<CAD_4ddTKb85p_Wcr6-gH5EP_85tmyUn1rh0PCLD3veXmVywoxQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD_4ddTKb85p_Wcr6-gH5EP_85tmyUn1rh0PCLD3veXmVywoxQ@mail.gmail.com>
User-Agent: NeoMutt/20210205
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Content-Disposition: inline
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On Thu, Jul 22, 2021 at 05:51:59PM +0000, Linux for blind general discussion wrote:
>Hello Alexander and all,
>
>I am using pipewire indeed, so I understand why emacspeak doesn't work.
>Thanks for the answer, I'll wait until, and if, they fix this outstanding
>bug.

I think it would be better if you write to the developer, or to the mailing list
about it. you can even CC: Alexander Epaneshnikov <email@alex19ep.me> it's me.

>Best regards.
>Francisco.

--
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

