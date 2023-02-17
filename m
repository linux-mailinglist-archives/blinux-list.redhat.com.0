Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4739669AF86
	for <lists+blinux-list@lfdr.de>; Fri, 17 Feb 2023 16:31:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676647872;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ciecOv01d2z1PbkKr22OiTh1NZCrkhZn7QWjbrZgzo4=;
	b=VOf7c5RtUaRk4uMg8jBYwfNIKU3Ar5BRpgnXhlKHGITSleMc5SA2fbP2d6kJEVecsCj6Ht
	VQRwMM+o2FwihvrOMDlxrXQe/W24ItpeXRIfDRWcnF2gZmHebfB93+nGbyZrXx2CfyKCbJ
	x/dgJ8FvaiRZ3XAJmmEX+U1Y7KuWMew=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-184-i-dJwkl4OZyUG0-9mx-HtQ-1; Fri, 17 Feb 2023 10:31:10 -0500
X-MC-Unique: i-dJwkl4OZyUG0-9mx-HtQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7DA9A857A93;
	Fri, 17 Feb 2023 15:31:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 44CFC2166B31;
	Fri, 17 Feb 2023 15:30:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 487941946597;
	Fri, 17 Feb 2023 15:30:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 17 Feb 2023 16:31:51 +0100
MIME-Version: 1.0
Subject: Re: Accessible way to install Ubuntu server
To: blinux-list@redhat.com
References: <mailman.224.1676621477.3513.blinux-list@redhat.com>
 <mailman.228.1676622097.3517.blinux-list@redhat.com>
In-Reply-To: <mailman.228.1676622097.3517.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:hQAUvIbw0+s=;ZaIIU3r9jT8LD98IVj9brN9pvlK
 tzKRRUt51SVar7EZRtgN+URXSI2GwhBNRKlVMsyzppi5uu4d+Vw2wGy8IYXJs1ECZoF5efXX3
 ZPz36J4/y0axmMLUyiuNuEOi947hBYPD3J/VXkhXjL8gdLDla1vrlIPiwqPafadWxaBda6ts2
 Q7I4QJ/XoGyQ0SgIixrzChh1xZ/WTUEuREIAc9piWThz/2RowmmoTXVN/fPNUeEIk50kcLjvg
 vK4aAJ3Ez4itO3VKzMzWvuLiw9UcxK5wCDRM3TSSJ04wACDWd5PswneKaAHkDevBn513jrZIf
 R4MSjb+tBu9zAcbcgsTA+VtGteRwYYAXITPgIM23tJAO3AF1AFNWgL9EdQML5v/moQCWq/plp
 Wbff3DU/W/Y8LZmwS5BZHAHFcgsFQptLJTqycYvDL3eslGoQ4AuLVM4qRCd0JrrGQjclL7ulZ
 8PDvIianH6C6knAc2ACgK00qr4Y6mfE1YJUJ1yAnCjBuShx8liFQwcsoC1jZ5QYY7BrLMucSV
 H5GaGO6bUDase3eyTa240FvuuxsQki6en5I+b/k1JD+s4upv4P/UrjsGemY5j68ERj4P5nLPe
 jSacsr6w3e7xECHwIi7avnjC2FqFCbEMrkWNkO5YIgSXynGsWLYhrRKKN7JrqhU2iO6EeKC6f
 QIJm4Pwtb6GBja7vIWhyCipL86aRl3TSvGE7MjuetiA5cQFubRIB6nV5vAbuklxstXn/RXLVk
 wgkirtRxUPaodxA3AxenPhFKLHdw+sAYAi4LEj9IHNR/KAIB2a+kbwo5JzcMPngGT+oL3DOTc
 FifvvaWMMDZc1MuJOfZ4kLLL8mwktYo3E27UYUoqCRsda5Y8yCc5AJFpWfwXpqprlKFKKiaHU
 +s3EOSBIfnrlQ07U4oEZbblbG6wofP3/Mmsg0YyVZKWgwjt+6tuPoQSAMVsWgEcgNc0FE8NeB
 /VQtBw==
Message-ID: <mailman.273.1676647855.3521.blinux-list@redhat.com>
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

On 2/17/23 09:21, Linux for blind general discussion wrote:
> Have you ever used a kickstart file?
>

I would have thought that on a Debian based distribution, preseeding
should be the way to go! :)

--
John Doe

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

