Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 893C940826B
	for <lists+blinux-list@lfdr.de>; Mon, 13 Sep 2021 02:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631493948;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Klx5z9cTS5qX27VCULHHOQAIALqMAHXHJYFZu/8MoQw=;
	b=N6ucqk0ca5fqt4AmVFz3GEKALG8GKIosAo6w4sW2l4p/EHMV7uzy7tLlOrFZD3nLGLXqMx
	pVq26OOVuYgp0fC91JfA4p0SLb22soSv59h9S+ZkR4WyZiyDbMI9rT4+Sf8viYas8aXlOf
	wXyQdU9ODHxNyY3vfoOutmoSRcWoCfw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-108-Ema7XYuINtWl78On6psvRQ-1; Sun, 12 Sep 2021 20:45:46 -0400
X-MC-Unique: Ema7XYuINtWl78On6psvRQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D2451005E46;
	Mon, 13 Sep 2021 00:45:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3910277F2C;
	Mon, 13 Sep 2021 00:45:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F00C94E58F;
	Mon, 13 Sep 2021 00:45:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18D0jKtS031695 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 12 Sep 2021 20:45:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 89C572023A0F; Mon, 13 Sep 2021 00:45:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8589C2023A07
	for <blinux-list@redhat.com>; Mon, 13 Sep 2021 00:45:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D8D668934E0
	for <blinux-list@redhat.com>; Mon, 13 Sep 2021 00:45:17 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-24-YfiWqi3vPsyTofMTO_9gIg-1; Sun, 12 Sep 2021 20:45:16 -0400
X-MC-Unique: YfiWqi3vPsyTofMTO_9gIg-1
Received: by mail-qt1-f173.google.com with SMTP id b14so6845269qtb.0
	for <blinux-list@redhat.com>; Sun, 12 Sep 2021 17:45:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=kvso3HVmV+WxrRCnCAA84DHvRf/sK+UgR856I5/QuqY=;
	b=roaZ5hAJXSrvnqbaJyYMhwXUrE/ZQJY5gcJ0/0+X05IKHXpl4dDIa8rZtu9aUR9cva
	tC+mUccSTeROBKxG76O1s2/ekF0pLUdpD2ceXR5cZNx6ppzYWmVC6k2CY90GF2lEAShe
	SdTUQiOCepCUz0XcXjaoflGy3Kn1NTg8k8bXZ/Psb4zaYXXSWVz9FTPX/E4xJIOPScMI
	64tcqLXg5NrMMcBP0+QMQx8GJhxbpmD4R9pLCD+Am2SknEBNdzfqglQx8bP7sCAbRF2e
	Uy9/+El/jxBy3huckhUjdETD5MHE/ssp8QKbFv/O871BcWie0S3xhqU+vGKEpA3FU6M2
	4Jdg==
X-Gm-Message-State: AOAM532k6zSGW+8O7qLX0cpXQALAHhcEbX6Y+O8W3I6o1wtTtVgLp//C
	a5u4kli4GVTtQSAMnURIHeGLVsxl8R4=
X-Google-Smtp-Source: ABdhPJw3f0Tl04UII74DR7ODaVubqK2VODae4+aJALzrt0bk6ZL1fsweGDZB/ln37YCFNj32CoJ7rg==
X-Received: by 2002:a05:622a:1456:: with SMTP id
	v22mr7226511qtx.275.1631493915461; 
	Sun, 12 Sep 2021 17:45:15 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id h12sm3304996qth.1.2021.09.12.17.45.15
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 12 Sep 2021 17:45:15 -0700 (PDT)
Message-ID: <0c7fa148-2e97-5998-6f74-0af3e697bdbd@gmail.com>
Date: Sun, 12 Sep 2021 20:45:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.1.0
Subject: Re: best gui vm managers
To: blinux-list@redhat.com
References: <20210912.162536.058.3@[192.168.1.100]>
In-Reply-To: <20210912.162536.058.3@[192.168.1.100]>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Maybe VirtualBox, but gnome-boxes seems to work pretty well for the most 
part from my limited experience with it.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

