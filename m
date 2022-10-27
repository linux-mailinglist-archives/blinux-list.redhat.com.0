Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3516102CE
	for <lists+blinux-list@lfdr.de>; Thu, 27 Oct 2022 22:37:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666903076;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AOr+wkmZQ4pRjih7P5/E/GkgowAjnHQTcY95pfX+/DU=;
	b=XjuXQi+d2NAcsRhtO29pp+Grc6m150q8LefSZUg6QQ9K+mPgqACQ8b6TPlJaWuhPED5UAr
	esJ3GBxdrSmflnOSW+WAb7HuT0u+y1aDUaOG6fYFEzU6XdyVgprDoZsepps2Ud40inCYbv
	/TzbxA3i2i2Grqp6CnBZapfdR8QBDR0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-223-mQyiV4cKOeCE8hokpXU7VQ-1; Thu, 27 Oct 2022 16:37:53 -0400
X-MC-Unique: mQyiV4cKOeCE8hokpXU7VQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F04931C004EC;
	Thu, 27 Oct 2022 20:37:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A0C34C15BAB;
	Thu, 27 Oct 2022 20:37:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 27D2E1946A7F;
	Thu, 27 Oct 2022 20:37:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 27 Oct 2022 16:37:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: void-linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.3229.1666863125.3003.blinux-list@redhat.com>
 <mailman.3171.1666863524.3004.blinux-list@redhat.com>
 <mailman.3232.1666864286.3003.blinux-list@redhat.com>
 <mailman.3046.1666864669.3009.blinux-list@redhat.com>
 <mailman.3174.1666865573.3004.blinux-list@redhat.com>
In-Reply-To: <mailman.3174.1666865573.3004.blinux-list@redhat.com>
Message-ID: <mailman.3148.1666903063.3012.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I had no trouble searching for the orca package on the Void Linux 
website. It shows me that version 42.3 revision 1 is available. I was 
not however able to determine whether it ships on the install media, or 
what text-mode screen reader may be on the downloaded install media if 
no desktop starts by default. This may still need to be determined using 
a virtual machine. I do know that one or more blind people use Void 
Linux; I thought there were at least two using it as a matter of fact, 
Chris as mentioned earlier being one, so I know that it is at least 
possible to use it, I'm just not aware of how easy it is to get it 
talking during the install process, although I remember it being said 
that it was worth trying because it can be made to talk.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

