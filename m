Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8923944FDC3
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 04:55:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636948534;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Q2NNIN4iOXO/85VLkd6NfdNRGAk0ZsL9Ff6eR8lhVWk=;
	b=KOcf/k+tmgdh/+3HJdX9QaB83OVcygf4Yj1DELlWel+9bQWXfXp/lG+/YLnJJiC83p+7PU
	uLaUo2UC1PHnMpJ2eRrqnLzyVXPDcPddbvi3378cgiVS8HDqcUggj1Dt/Q+IDDFnKDiCxr
	ADcwMYjdt2HHxrU4nLTUmvcVN0hlxzk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-430-GAv7ubTUMhytdHvq_DhqwA-1; Sun, 14 Nov 2021 22:55:30 -0500
X-MC-Unique: GAv7ubTUMhytdHvq_DhqwA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0BFE18010C7;
	Mon, 15 Nov 2021 03:55:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 737035DEFB;
	Mon, 15 Nov 2021 03:55:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BC03B4A703;
	Mon, 15 Nov 2021 03:55:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AF3tBTH025796 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 22:55:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 62AC8404727D; Mon, 15 Nov 2021 03:55:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2BE594047272
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 03:55:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 12AF9811E76
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 03:55:11 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-510-3VGpvssyMneFznef0jM1YA-1; Sun, 14 Nov 2021 22:55:09 -0500
X-MC-Unique: 3VGpvssyMneFznef0jM1YA-1
Received: by mail-qk1-f173.google.com with SMTP id p4so6983642qkm.7
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 19:55:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=jEymgkS1ayI/EjW6ceSsxUptH2/LtAcOd3aombj2UMA=;
	b=58W8+N/39IxYWi7o4kqQE75G5dQKFaWOrk+VxXNtrdewmVVcBCn8nKlOu+tEdzhaMP
	nHQNt5wACNG/6DHaid7uquExXBxCpx8z7pneyEir4iKc3AWRRGaBGIzN5t6kcQ9EA/4C
	gzwSD6TGN/x8ieODZe2ahCbLbhzJVhNIOShK4ITFXYGE4GSTqq24GbhzD6T8xUchLmSX
	Kq38BYYclIIJv9Fslb2mvPGhjSXW9oVDelCC22S1yA+RnJAW6tdh5EbrrnN/dh9KEN6y
	RsGltujl5Pue/PwiPY7kII7w/R1GG1pQq79EheCV+QBbgJZBwPl7fE3p14SBg0ECnH0L
	REoQ==
X-Gm-Message-State: AOAM532lA2O2mmy3TAwVWI4UuqqN6EF4e7Aw1z4yRP+Pkp8ZyZWUENB0
	OPWi5WjP6h8xTtzBrmCM/lM2bfS3O8I=
X-Google-Smtp-Source: ABdhPJy5UfROPNt3cyrhD+3/MNAMRZljSlQmxCokaQEEoBYPEKur8TEPKwO2DySY+r0y7tlu/31/mg==
X-Received: by 2002:a37:8684:: with SMTP id
	i126mr13470381qkd.164.1636948508829; 
	Sun, 14 Nov 2021 19:55:08 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	s13sm6598883qki.23.2021.11.14.19.55.08 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 14 Nov 2021 19:55:08 -0800 (PST)
Message-ID: <34fc34937537d89652fdb87b3cb7dc17a698d01c.camel@gmail.com>
Subject: Re: any other accessible email client for linux?
To: blinux-list@redhat.com
Date: Sun, 14 Nov 2021 22:55:07 -0500
In-Reply-To: <b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
	<alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
	<6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
	<b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
User-Agent: Evolution 3.42.1 (3.42.1-1.fc36)
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm now running Evolution, as I do like to keep up with this stuff. It
seems there is a bug in the editor now, where I have to turn off
structural navigation, otherwise I cannot edit a new message or a
reply. I think I remember seeing this bug in the past, but it is fairly
recent. But now the bug seems to have gotten somewhat worse, as I have
had to restart Orca several times as I write this message. Proofreading
is a bit difficult for this reason. So it looks like it's still down to
Thunderbird or seamonkey --mail for now, although Evolution seems to
still be a fairly good fallback.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

