Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 336176F738B
	for <lists+blinux-list@lfdr.de>; Thu,  4 May 2023 21:44:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683229442;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gaQd782IBXVn1/NUUkMc9J/gJL5pCol7ktAqaLQ66Hc=;
	b=Bw1Ajkw52vUii4M3zfwSuqqnPE9Ju3o9+3+5xCkT4/f3ZCgUdDzb3wTF1yc+jvs9IKkm0p
	q5IKabr6NPSRTQkvpwBMHGTVyaNGicywlY59YWiHOOTgRcueI/L6Xrqr5muFkDSGerYdmS
	q/QhYMkZ3GJXS5ZpflnCPjIvOsTe6Ik=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-532-Q2TB1hTfMj-L6CuoBMGlkQ-1; Thu, 04 May 2023 15:43:58 -0400
X-MC-Unique: Q2TB1hTfMj-L6CuoBMGlkQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE4491C06EDA;
	Thu,  4 May 2023 19:43:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D1F992166B30;
	Thu,  4 May 2023 19:43:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B12801946A49;
	Thu,  4 May 2023 19:43:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 4 May 2023 15:43:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: Problem installing fenrir using pip in fedora 38 workstation
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1649.1683139375.290942.blinux-list@redhat.com>
 <mailman.1628.1683140218.290941.blinux-list@redhat.com>
 <mailman.1717.1683182658.290935.blinux-list@redhat.com>
 <mailman.1846.1683185639.290938.blinux-list@redhat.com>
In-Reply-To: <mailman.1846.1683185639.290938.blinux-list@redhat.com>
Message-ID: <mailman.1877.1683229429.290937.blinux-list@redhat.com>
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

Just tried it and was taken back to my prompt and got no output. Should 
I get some kind of prmpt should I get.


Matthew



On 5/4/23 3:33 AM, Linux for blind general discussion wrote:
> modprobe evdev

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

