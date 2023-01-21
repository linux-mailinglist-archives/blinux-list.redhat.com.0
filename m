Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D1256676690
	for <lists+blinux-list@lfdr.de>; Sat, 21 Jan 2023 14:44:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674308663;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Yrn3Ykn/liBX61jWv6ASWQxsEiAjEwYYbM9CAmVbAD4=;
	b=SGOJJ14HtnYGfInNMpzYRtxfuoxSlqaYxX/3gc2mtWnrdwWaAjxg7babcs/C3jnId5aNgE
	5LANBT8u/TTKS2Ona/pgsChqFDVlXQUs65YVCq9nq4g7nXfpvQopu1LytdMWRkjAMDoxYH
	+yf+ICIUvnT/384IfPXW1pq0z6kWY5I=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-311-bSs3wDV0MtCs9KEHwfJI2g-1; Sat, 21 Jan 2023 08:44:19 -0500
X-MC-Unique: bSs3wDV0MtCs9KEHwfJI2g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CCF92811E6E;
	Sat, 21 Jan 2023 13:44:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 903822166B2B;
	Sat, 21 Jan 2023 13:44:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D308319465A0;
	Sat, 21 Jan 2023 13:44:13 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 21 Jan 2023 14:46:44 +0100
MIME-Version: 1.0
Subject: Re: question on how to enable orca on latest version of raspberry pi
 os
To: blinux-list@redhat.com
References: <mailman.402.1674304781.8177.blinux-list@redhat.com>
In-Reply-To: <mailman.402.1674304781.8177.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:4pVbqZFdltQ=;IK1JU/LRj2NFLEVr1kvMt06LsMu
 PBac/bZG3NyVMoMBSs2LzF55VFrYb+uDS0X+0wdRuUDbDNr+KCfwkwGcLuYHhHt/YdDuGbqMs
 tCdlu3we6XKzqXt+mPTMyUn/oZisEonyPfWFp5SKK4gEefmjlFWkc8z/V9NmFsy31Op15YZRz
 SjG4UuBPh7JysRt7BK6Vw6kQmKb9eiZOsBD95GrlKkU1jHUWbeok1SzMQjXNDKqj1WkxIyivQ
 5A/HuC2mrCRegMJvWMQdkPaTP0tZeMYpm+DCKTxvLhAOm76pRfhq9+fmZssIgcyMKqIKf9voo
 XwsLAmezL+JbCThiaf/We/Z/ui/hXE7/6isiMQmSUK+pdtzoonfkyONtXNQBYfinGPR1V7dYM
 RGnHQ7YLVybLqa49Fr8T6n4ZI3SqGOmTOqe4ANx7Q0iLcvamsy+82Uu3uPynrb5J5AizqlPuB
 1yvsQRmVw4AmCJYCHs5J3mpPj3XyMgauTrgmMVHL56EitixJEbTjxVrOp4x7XCJncWSlL+d51
 mRMDj9ockzocNMbBexoxZ4ZuyF7yWAEAbtae8+Ps1ZlT6Jrb0gksjtGMXYYYlL47gOItsGVEg
 hF/ZfJ/XWpYImWeOY4GKjmmoOL/k/uongt3SQ5LoMefX097VfYCg/Ax8lMo9t3AnI/GubFi9z
 u/D6LBskbLt/7CP1jc4XtM75KYw/ckjhpr1PjzOm4lnsbpax1tPfK2fckFsgqxx/RCFi9QZ8V
 RihHOwQaJ8zxx5dXOkVnWo0WdjLi+NLmp/kQQfPokoQYzylcpUZeGmhST8fI3L5vQdiPCnhxO
 47KZp64DyqRtZtLzyPxAIx+MORgLo6+FyfVm/SvS8I6gYcp/D1VXpWD7RSZx+hFEX+P9zM7HE
 Zq/PjDkM13t3jZ6NcBsWcAmWs3c+SVpZOGLxdFW7SGnS17hNSJPkFCeN7VIs+Wc8wNY2E7S9L
 wn3F7Q==
Message-ID: <mailman.398.1674308652.8171.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On 1/21/23 13:39, Linux for blind general discussion wrote:
> Hello. I have a question. I got my raspberry pi 3b, and I want to
> enable the screenreader. I do not have an extra monitor but I do have
> a keyboard with an usb dongle. How do I enable orca?
>

I guess you want [1].

[1]
https://techesoterica.com/getting-the-orca-screen-reader-working-with-a-raspberry-pi/

--
John Doe

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

