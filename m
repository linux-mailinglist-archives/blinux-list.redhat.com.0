Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B31E481660
	for <lists+blinux-list@lfdr.de>; Wed, 29 Dec 2021 20:35:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640806537;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8RET1GVNCPZ4hzyM4akvyI2PQiFErN1fH7uigiETa/k=;
	b=PNmGznU3qmX+PAn3h3xMUwxbrlNN3faa7q7iBye9zuPqThZJy+Um2CrkjAHx5587z591jA
	GeemtqnBE1b6rhK8NyLyCr+DJA0sm1tGdtGPT6idK1Hacb5huEx3eWloe+1F9KhpF7YlXN
	3saX8lw/4PBcxAtahS3AmBwlBsQpris=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-642-JfteCaPPP22Zjic3RrJLSQ-1; Wed, 29 Dec 2021 14:35:33 -0500
X-MC-Unique: JfteCaPPP22Zjic3RrJLSQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8425B102CB29;
	Wed, 29 Dec 2021 19:35:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 69C895DF21;
	Wed, 29 Dec 2021 19:35:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C066A1809CB8;
	Wed, 29 Dec 2021 19:35:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BTJZPLr018103 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 29 Dec 2021 14:35:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 92E1E140240B; Wed, 29 Dec 2021 19:35:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E27F1402400
	for <blinux-list@redhat.com>; Wed, 29 Dec 2021 19:35:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3D6191064E69
	for <blinux-list@redhat.com>; Wed, 29 Dec 2021 19:35:25 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-455-9Y0stHkYPS2Qn1T3OzBDCA-1; Wed, 29 Dec 2021 14:35:23 -0500
X-MC-Unique: 9Y0stHkYPS2Qn1T3OzBDCA-1
Received: by mail-qk1-f175.google.com with SMTP id w27so14677805qkj.7
	for <blinux-list@redhat.com>; Wed, 29 Dec 2021 11:35:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=Ty4JpCA2c3wUWKq87MM6+V/8c5yFJzvAjxOs/3RgkFU=;
	b=xkKDYg/c1t1ei2Uxj3CsQv0mE/HT+pGSXciTleg7u6IT1npQueqVcz2XB4aX6QozqB
	NEQXQtvdLx3qxy8wyDO71UVWpXfJ/m6A3NtkfekkbpnXNcizOmeZnt/F6S890Lhmg3n0
	A0PtUEBAAVG6Z/JUMbMg4Q4u88f7Xr2+KibmGkgzl1+7LxLQf416cr/75w/bdVW0czBT
	JLZPAWKIeRu+bq0JO4IVf7cTmlNkG1vEwb1AWh1USabQHwNGpvwtZ1DkRUoMYsH+mpD5
	CCSeIprYgXryXF+B2jDFDSd3BUOWFup6ExKbM1wM2VyKs8o+Ttndf8NwdI46/moxaakR
	7qjQ==
X-Gm-Message-State: AOAM532R5z+3dVPvTAqlqbyBIyNGPuRM9JpBs/O91jAClUdz4sjwDHEc
	LDX/eLvs5srsjxIeIiTjxZK2JQIbgW4=
X-Google-Smtp-Source: ABdhPJxqGuyHYc6e0no6nq+W1LLR5vWnbvehKqc4H2GaPppdmahzhFEd+ThubFFLEczkVA/Q7AHGVw==
X-Received: by 2002:a37:f50c:: with SMTP id l12mr19620661qkk.194.1640806522697;
	Wed, 29 Dec 2021 11:35:22 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	i23sm17294175qkl.101.2021.12.29.11.35.22 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 29 Dec 2021 11:35:22 -0800 (PST)
Message-ID: <b4c0d189-7ca5-be22-258b-9e6791f91f5a@gmail.com>
Date: Wed, 29 Dec 2021 14:35:21 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: Infected Chromium
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <e1a19af4-7fae-373d-6281-953dd4b03790@seznam.cz>
In-Reply-To: <e1a19af4-7fae-373d-6281-953dd4b03790@seznam.cz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Most likely it's just one of those scam ads that pops up in browsers on 
some websites. Best thing to do is to ignore it, although if it keeps 
popping up, it may become necessary to remove ~/.config/chromium. It 
should be easy enough to reinstall the extensions, since there were only 
3 of them.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

