Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0174B56D8
	for <lists+blinux-list@lfdr.de>; Mon, 14 Feb 2022 17:38:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644856721;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tpakdZteZCgI/OUpWMUgVmzJ8M2Ktss/0SqPHIs8Ym4=;
	b=KYs8UVD4zii7Q7Djzz3oNDm2Jk60UhYncUrIWKnuIxuGrkd+P7CNyc7A+0L3qem6RVg2ek
	QbFS0No5MJ1WrW93YIfMIKy6nH2JvCuXpAIX9FNlngVH68nKDtwJ9E6QUaC2/SAxkeRUJs
	74MJO6NzBcyjnThqn3minHsUnNPy+9c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-637-u8JBUQJSPC6eaWW910qUyA-1; Mon, 14 Feb 2022 11:38:38 -0500
X-MC-Unique: u8JBUQJSPC6eaWW910qUyA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D77D0100C662;
	Mon, 14 Feb 2022 16:38:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 826B975746;
	Mon, 14 Feb 2022 16:38:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 22FC71806D03;
	Mon, 14 Feb 2022 16:38:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21EGaseU028285 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 14 Feb 2022 11:36:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 12EA55361C0; Mon, 14 Feb 2022 16:36:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F2085361C1
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 16:36:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EA86710F9813
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 16:36:53 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
	[209.85.216.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-341-790JuiNGORaHtyVQttyJ-A-1; Mon, 14 Feb 2022 11:36:51 -0500
X-MC-Unique: 790JuiNGORaHtyVQttyJ-A-1
Received: by mail-pj1-f47.google.com with SMTP id b8so3192544pjb.4
	for <blinux-list@redhat.com>; Mon, 14 Feb 2022 08:36:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=SvQujJdHKcqGA4FwMPKzfov09sn3K9rfYqtglc0HnWo=;
	b=CPfUTqZ2m/uJTHSHfQKWrpDJiiN9a8eSFaw9FKRoyCpxIhbZWmNxbaQQ+JlYnZcgID
	jDlfut9GZNoGoYx+m2oNej2fBJDuTJw5vwxYiJoTEB+mC5NSZ3FP0bQwmJ8fsQ27/1No
	fbEK1LMq91/+UQV13TsZipyJriNn3dP82vzI+bw6wR7SFn+ZLc6vhVI7DTKw9z7l2Hz5
	a96aY3elTSdJ/GC4nWHH4KdZvJA3o+EI/n9q19xdonuvu4i4LxwHdrFHHC51tzV1odql
	cNuLaRkHEND3ggTIKgRCiifnZYV9kSlXpLfVYhyOMTqYAHIS+r7g65HyV0nhVRUdVtKB
	YaVA==
X-Gm-Message-State: AOAM5307F1CaH8PbcYnC6zigUnSBtri6i6l8HbIEETVDNbyQk0oMPoVZ
	e7sIuiVMHn4vLbmbR+OokrbERB5/SDVfnQ==
X-Google-Smtp-Source: ABdhPJzTZlvXqqW8rfcQVlVOSznionKn/OhD0HQQeEGVuY0VFWMcY6m2PCH9psCQKLm9WEDxUd5ZOA==
X-Received: by 2002:a17:902:9b92:: with SMTP id
	y18mr544382plp.142.1644856610648; 
	Mon, 14 Feb 2022 08:36:50 -0800 (PST)
Received: from [192.168.4.38] (24-113-81-134.wavecable.com. [24.113.81.134])
	by smtp.gmail.com with ESMTPSA id
	my18sm15037311pjb.57.2022.02.14.08.36.50
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Feb 2022 08:36:50 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: How do you customize the way punctuations are pronounced in Orca?
In-Reply-To: <CAO2sX30a0b3abFF-gn8m3sCFWcg6i5RQRB6P-o_+9d4FMaaV3g@mail.gmail.com>
Date: Mon, 14 Feb 2022 08:36:48 -0800
Message-Id: <51BFC8C1-7D2A-48A3-A4D4-D513CE92C5AC@cfcl.com>
References: <CABKqQvGqKyUTj5KmvkgpOq9H89T9vxxz-LqFZPDZ=WZ5NXOQhQ@mail.gmail.com>
	<f8278111-3fc6-107d-d5fb-8f85587232c8@gmail.com>
	<CABKqQvFFkhtQg1y37tFVfWEogVi4=eQ5uTT4VYAGDNGViMF-Gg@mail.gmail.com>
	<20220214.153145.899.28@192.168.1.100>
	<CAO2sX30a0b3abFF-gn8m3sCFWcg6i5RQRB6P-o_+9d4FMaaV3g@mail.gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21EGaseU028285
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


> On Feb 14, 2022, at 08:23, someone (?) wrote:
> 
> ... part of me wants to force my screen readers to pronounce W as "vey".

Oy vey!  Seriously, you could have it spoken as "dub", which is a common shorthand in terms like "www" (i.e., dub-dub-dub).

- Rich Morin


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

