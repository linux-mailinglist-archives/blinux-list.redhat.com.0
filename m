Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 53DCF759FD0
	for <lists+blinux-list@lfdr.de>; Wed, 19 Jul 2023 22:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689798712;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cnum+TsRZ6LjICgiJBc1uzgxSddWBlIdt+bMk2PDA6U=;
	b=B4K3dZgaHRNoffAFe446hDMxnV/8E66apjscgA5ix/qtTeSiUmD06t5Y0g3eCfDmwPNzbK
	wQWp+vjCcRHWa9VlZjGWcrt/ET1a0BFz3LTHq91ZrAUnqTYpne+qZVxTBPdE8wStYgXOIm
	6lJvERfB1VL4jpNOFqWO2qegM990uHk=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-605-JlI83Ux6Py6fM_gbLEj6Xw-1; Wed, 19 Jul 2023 16:31:46 -0400
X-MC-Unique: JlI83Ux6Py6fM_gbLEj6Xw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E89AD1C31C48;
	Wed, 19 Jul 2023 20:31:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 253071121314;
	Wed, 19 Jul 2023 20:31:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E8B911946A41;
	Wed, 19 Jul 2023 20:31:43 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: Attention chime: the podcast client
Date: Wed, 19 Jul 2023 15:32:00 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.1585.1689797886.687814.blinux-list@redhat.com>
References: <mailman.119.1689509513.687817.blinux-list@redhat.com>
 <mailman.83.1689515407.687813.blinux-list@redhat.com>
 <mailman.98.1689516548.687812.blinux-list@redhat.com>
 <mailman.131.1689519363.687818.blinux-list@redhat.com>
 <mailman.1276.1689797270.687810.blinux-list@redhat.com>
 <mailman.1585.1689797886.687814.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.4.6.0)
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:+dfrEzcuCZc=;2G37gKYdhQot+UP7j5Gs2zG+6kx
 K8J6juUBSbsercPvxmRSWwU0Ku8C2co54QTtopIIHXYXozyTSe7QiQ7kJyD5g4UbnG1WCsDYx
 n160tZxx6OeLcRVOPck5jAfCFis1ES3AE5WxV39wH17dbgZzP+sgDuIGrA1ja91/XMuXP+2Lb
 jFvwk8Z4Z3yq7MZsoL2i/VON4meVMU5PfSIpMSZR568v09jSgWsGd2xq6le327lShtfdpRSWa
 rhIrTOvsSMAYNifqUHv25vy78GoIlbTUWpWUdNllm5HAUXdEOrMgdMN4qX2aoZxn4wxSqMZsa
 7Tpu6QLcr4vpIxM1r0seQ0qUyoo08IHPAHK1CLCePmO1OuJmjMYc1rvIr9cGRb78w4W3Mg8Cw
 3tG7ZFZmqUKHC60pbfWzulvzd3s29cDkNPlMsF8CL/rkX3W3N93vyEajLyWeRvPxSZjhDsv7K
 CaII8N0RBllcLJyIqQzFMt7L1BPtRLOm5cD+pUYPuen3WaOx75WVOC5xknKmOV7gPnO4jclZA
 IoIrQ/JGdJLXm53tvvx6oJ5x/myXhqO8DCC3SsGTebRcNSGZwYa4n6yV5HL5fi/RJnc4mJ3B7
 VbUgumlTt05f3ewdx+OEUGTMnlVMWM/PVOKFCZ1Y0tA0l1xHaRRE7p2Cltms80gu30nse5H6z
 d6em2Me1ht7NCbf52JTMEF05qBs/7sNl8eoe/d510C7sEa02Bqt6r3yJse4YKgCnmL0idivVZ
 ahx6K3z8PNYpha2mwzpjc944gscoUY5VKClLIOpbQ5mIfwGDy6N4KX4i+ekEwIjfn7+BpN5ka
 /RVDJzC39zVp/2am9HSkKt/M5ymxPNo9mFddLpeJbhewqqFqjIB6+AJ7qIw7Uz5omjnhF3hYu
 k1+fMWCB3ifSIvsN82aiL4pPeHh7PaxZi6mb2nYM5YPb/SDIBudrr7WNuj2UQQPhg3WBpYhfE
 f/hfUgE/ibyNCBCYUY4LtlQq9Fo=
Message-ID: <mailman.1334.1689798703.687817.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm definitley enjoying this client. Thanks for announcing it.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Wed, 19 Jul 2023 13:16:31 -0700 (PDT)
Subject: Re: Attention chime: the podcast client

> Well, I only used h podder, which I basicly liked. Actually it was an only
> client I found easy. I suppose I can show you the main menu
> number 1 Add new category
> number 2 Edit category
> number 3 Delete category
> number 4 Add new podcast
> number 5 Edit podcast
> number 6 Delete podcast
> number 7 Choose episodes to download
> number 8 Start downloads
> number 9 Search for podcasts
> number 10 delete from download queue
> number 11 update all podcasts
> number 12 archive
> Choice:
> Back again live, really what can be simpler than that? Sure as more of us use
> it, we can suggest wish list items, such as currently it doesn't check for
> duplicate titles or eppesodes. Thank you for an interest.
> Chime
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

