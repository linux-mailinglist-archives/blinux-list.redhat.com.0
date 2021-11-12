Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A71D44E0EB
	for <lists+blinux-list@lfdr.de>; Fri, 12 Nov 2021 04:52:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636689120;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=43FknoXZkIRL1VG+8wcqvNFu5a0GyqQFuqHlb8xsj1s=;
	b=CThUofCCvsm5Ywg6+e3tePSlKnGjoeR5MFmEAk3dz9+paT9hbznu6zcPi56Enp7Iv0ZrxH
	W05sdH6OHEpAT7dUGCYSslhpqWUXiAul21rOeR/L9xYk7DcTTmTTDe4WSiJin9ecP7C6oa
	ADi4G7StRVJ4pWtL1d90hbd7zeQ0gpw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-294-BIfjq93-O7CRQFNmSSSrfQ-1; Thu, 11 Nov 2021 22:51:56 -0500
X-MC-Unique: BIfjq93-O7CRQFNmSSSrfQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F38708799EE;
	Fri, 12 Nov 2021 03:51:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3BAC65DA60;
	Fri, 12 Nov 2021 03:51:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 92B731819AC1;
	Fri, 12 Nov 2021 03:51:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AC3pZhm015783 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 11 Nov 2021 22:51:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 547FF404727C; Fri, 12 Nov 2021 03:51:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5077C4047279
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 03:51:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 38F691066558
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 03:51:35 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-384-knmd2HtSOzC4L30rYUN06A-1; Thu, 11 Nov 2021 22:51:33 -0500
X-MC-Unique: knmd2HtSOzC4L30rYUN06A-1
Received: by mail-qk1-f171.google.com with SMTP id j2so7906938qkl.7
	for <blinux-list@redhat.com>; Thu, 11 Nov 2021 19:51:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=yPlc9kNy25VVkGlqQw6L0MvwMYFTkpSbSmihEuvzC6E=;
	b=lteW1iwDhVUqa9QYiNcHv2CdYr+l2dCVW4YoApB+h8TNPIBGHGg4Q8Q2Ty5qgzvEoZ
	hrdPAtlVm6FmlcNAxCljxHHAjiLwkzYfyL5pkvCAUbjyBAF6RzOrkRkvpHgpVXXku8Uo
	xtXvTZpVs4yxgFzabWEwuKdQ/1kkrMfbt5/LdZ8Rw8IIX67SiHrkwPoGPc92I4CEqQwM
	QCFaJE4AltJHvq44t85Z2g+4IocCb8duYDyeaKWX+KZTa7OuKuowAUmh3BQKm3IO4p9K
	1OPQGUqzrJTYRenPWU+k2u2Y4ivm1jVyHAina+Tx1q0RC5R8CETT3ZUo8SQU/shEneUC
	FvQw==
X-Gm-Message-State: AOAM530/x7/OgIgf4il27vaYfrhtwHdjqDrRBqX+DzSU9cMmHXYLw35G
	vpSWXo9UTnn3nk/fwQAsJ+HUwzdmXEkF+Q==
X-Google-Smtp-Source: ABdhPJxRKzTwzD+HrIHBk0zhCMJbrxsTc3CSMdF7x0gaJRL3fUstV2VJlVd8DOiYF45CaJih+s3phQ==
X-Received: by 2002:a37:8e44:: with SMTP id q65mr9883240qkd.372.1636689092921; 
	Thu, 11 Nov 2021 19:51:32 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420::4f20? ([2601:192:4c80:1420::4f20])
	by smtp.gmail.com with ESMTPSA id
	bs33sm2190773qkb.130.2021.11.11.19.51.32 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 11 Nov 2021 19:51:32 -0800 (PST)
Message-ID: <ffd7ceb4-2c64-473f-43bd-d1566899bfc4@gmail.com>
Date: Thu, 11 Nov 2021 22:51:30 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.0
Subject: Re: How do you format a disk using slint?
To: blinux-list@redhat.com
References: <c8bb974c-f712-d963-1ecb-21d4b398d110@gmail.com>
	<45dfbbc5-04c2-9f49-a595-581537acbafe@gmail.com>
	<8ce70d89-dc7d-f8e9-6b8a-44d48d4ace4c@gmail.com>
	<6c63560f-ca92-f096-5252-9813d408f584@gmail.com>
	<3fe73ae9-6b66-c400-6067-70afc6cad92a@gmail.com>
In-Reply-To: <3fe73ae9-6b66-c400-6067-70afc6cad92a@gmail.com>
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

slapt-src --install gnome-disk-utility.



On 11/11/21 22:31, Linux for blind general discussion wrote:
> slapt-src gnome-disk-utility

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

