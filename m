Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDE669EE4E
	for <lists+blinux-list@lfdr.de>; Wed, 22 Feb 2023 06:30:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677043854;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=k+5DW9oEaCENMIY41EC0yzmwgeoe+96lSL896D+8apA=;
	b=euwtyb395jn9SURWlVANRSZlDbW5nYh9AoYjNeFlwDT+Q8tnVWz3cKF+4qYDRt1x1avNK6
	gKBTITYL1K0cZhLGEvEvxQ3R+cjVL06DZw5SR+/JIzBp14tKcesvVkUFgGDVfG359Egh/I
	VU/hiVg/Zm4SGuzoR3hj7l992k8+VfE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-317-sIdp4Z7rNXud-r-nMDPk9w-1; Wed, 22 Feb 2023 00:30:51 -0500
X-MC-Unique: sIdp4Z7rNXud-r-nMDPk9w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0B1EE101A521;
	Wed, 22 Feb 2023 05:30:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 34D161121315;
	Wed, 22 Feb 2023 05:30:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AAC5C19465B1;
	Wed, 22 Feb 2023 05:30:47 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 22 Feb 2023 00:30:41 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [DECtalk] Report of a successful use of dectalk with graphical
 Linux. (fwd)
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.887.1677042909.686535.blinux-list@redhat.com>
In-Reply-To: <mailman.887.1677042909.686535.blinux-list@redhat.com>
Message-ID: <mailman.988.1677043847.686540.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Yeah I saw your response to this question, and you're spot on. You can't 
just slap a GPL on something and make it stick. The original developer 
releasing the source code is definitely good, but as far as I know, 
unless he got the blessing of Fonix Corporation, which is technically 
the copyright holder, neither he nor anyone else can change the license. 
Worse, if Fonix Corporation sends a DMCA letter to Microsoft, they will 
remove it from Github without a second thought. They of course can't 
delete everyone's clones, but they can delete the repository and all its 
forks. So I do hope that this legal hurdle can be cleared. If so, we 
have one more free and somewhat decent speech synthesizer to use for 
work and play.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

