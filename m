Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2EC595411
	for <lists+blinux-list@lfdr.de>; Tue, 16 Aug 2022 09:41:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660635715;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=p1/6MxFlAzJcsyU6jFnSZTHBkG081opWHgnN1yeNb+I=;
	b=IQ4BDsHHD6nbxCks/73UsRYyQ0rkp5EkIpp+oJF2NAET84/eyrrtnM1m53h51y1aaHBbf8
	lqc0KU56b0y/LkPo/Nl1pTzO9ZtwVfyWr4YUITq6d5T7wvSsFRhWKjROc2R1IiMJjSeaJM
	9rXmKB9qLjlUAANPcza72zKCYiGaniQ=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-457-eClndTGHPvuAhmDFFteO7w-1; Tue, 16 Aug 2022 03:41:51 -0400
X-MC-Unique: eClndTGHPvuAhmDFFteO7w-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 00F1A3C0E203;
	Tue, 16 Aug 2022 07:41:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CE11D492C3B;
	Tue, 16 Aug 2022 07:41:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C52A31940350;
	Tue, 16 Aug 2022 07:41:48 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 16 Aug 2022 09:41:42 +0200
MIME-Version: 1.0
Subject: Re: Need help with a Youtube terminal app
To: blinux-list@redhat.com
References: <mailman.693.1660588007.10505.blinux-list@redhat.com>
 <mailman.714.1660588859.10499.blinux-list@redhat.com>
 <mailman.724.1660597476.10502.blinux-list@redhat.com>
 <mailman.725.1660598394.10502.blinux-list@redhat.com>
In-Reply-To: <mailman.725.1660598394.10502.blinux-list@redhat.com>
X-Spam-Flag: NO
Message-ID: <mailman.892.1660635707.10500.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On 8/15/2022 11:19 PM, Linux for blind general discussion wrote:
> You could download pipewire from its github repository and try to build it
> on your system.
> git close https://github.com/trizen/pipewire
 >

Should be 'git clone' and not 'git close'.

--
John Doe

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

