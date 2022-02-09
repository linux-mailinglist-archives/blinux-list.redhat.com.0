Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D8B4AF369
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 14:56:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644415012;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Q9XSzkaOjz98lKzyLS6BnwxfMsny4CHwZtkblDf7e64=;
	b=YQeAqnDXL4rxVsaxK3ZDkfgbvMJzPpAj8sEHR5DvYMs/8O81ZnSMqzXthxtSdkYvk0wZn/
	jxhDQkfIGJD8g+opRfkYgH/VjRm6NEc7uJJv1eRLdrWhdVmCnrwI/V/T86HD4R0TOyzUTR
	ciegBqShI7bvdkJk5ThnBuuIk/Loidc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-449-hFkLYrUgMhuQaDscZ-BOCA-1; Wed, 09 Feb 2022 08:56:48 -0500
X-MC-Unique: hFkLYrUgMhuQaDscZ-BOCA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4DDA110247A8;
	Wed,  9 Feb 2022 13:56:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA9937B9C6;
	Wed,  9 Feb 2022 13:56:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 17E9E1809CB8;
	Wed,  9 Feb 2022 13:56:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219DudJC025275 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 08:56:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EE827401E64; Wed,  9 Feb 2022 13:56:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EAF7E401E5D
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 13:56:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D1EBF2B699F9
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 13:56:38 +0000 (UTC)
Received: from smtprelay01.ispgateway.de (smtprelay01.ispgateway.de
	[80.67.18.13]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-320-FPBjhxJ0M1ajf7Z9X6Yqzw-1; Wed, 09 Feb 2022 08:56:37 -0500
X-MC-Unique: FPBjhxJ0M1ajf7Z9X6Yqzw-1
Received: from [37.4.229.93] (helo=[192.168.178.110])
	by smtprelay01.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1nHnSV-00078X-Ke
	for blinux-list@redhat.com; Wed, 09 Feb 2022 14:56:35 +0100
Message-ID: <04f9d702-4757-239b-abd8-da96fd85cb28@linux-a11y.org>
Date: Wed, 9 Feb 2022 14:56:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
Subject: Re: Coqui TTS has blew my mind!
To: blinux-list@redhat.com
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<d5bc5f5d-ee98-cdf1-db51-9474080f13a1@gmail.com>
In-Reply-To: <d5bc5f5d-ee98-cdf1-db51-9474080f13a1@gmail.com>
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Howdy Kyle,

let me know if the virtualenv worked for you.

cheers chrys

Am 09.02.22 um 14:30 schrieb Linux for blind general discussion:
> Just saw the python issue with 3.10, which is what I have here ... 
> 3.10.2 to be exact. I'll try the virtualenv to see what happens. It 
> will be great to get this working, especially since it can in fact be 
> piped out to a file. I mean the lady really sounds like she's reading 
> an audiobook already, so converting an ebook should be no trouble a tall.
>
> ~Kyle
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

