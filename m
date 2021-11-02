Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A21E44425B9
	for <lists+blinux-list@lfdr.de>; Tue,  2 Nov 2021 03:48:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635821320;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9lZJgKvBlHY4jVbEdvEJkeScGXNQDJrS0BGKoLmiZPU=;
	b=HVpEOhX7HIxvrLN4vkKtEPmm9S5CbPj6xTi0UEa/Vzb7Sn3kPVAlEaFBDZHtPjKqbgTBhk
	vUj+L9YcqgqEleQ0DpIaNzfAkdalWfOc+gYf9oQDKajltL9+WJtZ+ypHVvB/ttHfL3upbR
	2R3xb9EdjTbJbcWyIxYToqoOUJov10g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-48-SV1ciH2wM86brKdk2WreYw-1; Mon, 01 Nov 2021 22:48:39 -0400
X-MC-Unique: SV1ciH2wM86brKdk2WreYw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5CB1C9126B;
	Tue,  2 Nov 2021 02:48:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D7FB5D9D3;
	Tue,  2 Nov 2021 02:48:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 519984E58E;
	Tue,  2 Nov 2021 02:48:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A22fktJ020024 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 1 Nov 2021 22:41:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 73F9140C1252; Tue,  2 Nov 2021 02:41:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FE96400F3E6
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 02:41:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 57429800883
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 02:41:46 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-578-F36L0dM0PUaPiKsnZCvh-Q-1; Mon, 01 Nov 2021 22:41:44 -0400
X-MC-Unique: F36L0dM0PUaPiKsnZCvh-Q-1
Received: by mail-qk1-f178.google.com with SMTP id bk22so11705513qkb.6
	for <blinux-list@redhat.com>; Mon, 01 Nov 2021 19:41:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=lPFrbJxlaj+i1wV0ZCHoL7jqhSkQa4mkf8c/MPcAM5U=;
	b=Bzvf5o6gw2QRTePjni8k9nw361Y/6MxmPrFhUujDaZl9sTabJGmQxct07eEM6bVE42
	9eLQq2aKR+zqTNCJwxU/BAs+NYY2Q5Dr1KBWy2nblmHJAK4+Nbkk2sid+9lqd3sjs2Xc
	spiu6z0RV1/U1IDrvI+pP3jvW47r8QCRkUIn1GM4FfJwAt4HGGXnVq0ZYbtf6QpxXC/E
	uSXtgsFPLGxK1WjqoCsuMiOOZSQVFPHBeMeLAa5HTUdygpHO53LREISXbcvksEhrcjuc
	eAzKPTxCzIyMMjM5W2/Tva4058gqD5yD1zTbjsg89AHIrN2i7aIGw2CokfW8e2DufOgb
	1IfQ==
X-Gm-Message-State: AOAM5328TKI7fwEkiHnMofcOqFYSjig6/cL1TTrT53wJrYV+puaGTF6X
	BqGym7DC0zhgoko/h1xUpRaKx6YjCGE=
X-Google-Smtp-Source: ABdhPJw3FwNjK2ILE625Q3JxXPLZ4XO9eqGrkZ0wCHX0g765VQrS2jtfnU8ZPefUPKyds06w4N3nIQ==
X-Received: by 2002:a05:620a:bce:: with SMTP id
	s14mr26463964qki.482.1635820904014; 
	Mon, 01 Nov 2021 19:41:44 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	f66sm6750653qkj.76.2021.11.01.19.41.43 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 01 Nov 2021 19:41:43 -0700 (PDT)
Message-ID: <e69acb20-0467-35b1-3d40-eafae4543b48@gmail.com>
Date: Mon, 1 Nov 2021 22:41:42 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.0
Subject: Re: FYI - The Yggdrasil Screen Reader Project
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
	<CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
In-Reply-To: <CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

OK yes, choice is always good. But they're certainly not helping their 
case by saying that we should jump on their bandwagon because the 
existing choice is so piss poor as to be almost unusable, which is known 
to be an outright lie.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

