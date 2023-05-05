Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B206F7E3D
	for <lists+blinux-list@lfdr.de>; Fri,  5 May 2023 09:57:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1683273443;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YTyCtz/R1TOpdQ99fhiltyzeMe5BPeZN0UD/IfRK1KU=;
	b=FZUK8vXC3mbfRF9zqe7PNB+OfFaiV2VcCuP2aQi5lKpv3iqw4lQFwgS4+i/b3Gz616KITz
	Jx9mbRJWFNMz5FsqKx8XSYPOnv34AAA02FDzLM31i4Cq7jwbKKYR41sFHxG+wgic9oR1eX
	YKhJMfMPgtgVZyVkOb19LLGi8noKEkc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-437-3ct6Gt0pNnaAkcARn6iLdA-1; Fri, 05 May 2023 03:57:19 -0400
X-MC-Unique: 3ct6Gt0pNnaAkcARn6iLdA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8F58A870820;
	Fri,  5 May 2023 07:57:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id ACA9742AB8;
	Fri,  5 May 2023 07:57:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 121481946A4C;
	Fri,  5 May 2023 07:57:12 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 5 May 2023 08:57:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: Anything dmenu-like?
To: blinux-list@redhat.com
References: <mailman.1902.1683269376.290943.blinux-list@redhat.com>
 <mailman.2027.1683272628.290944.blinux-list@redhat.com>
In-Reply-To: <mailman.2027.1683272628.290944.blinux-list@redhat.com>
Message-ID: <mailman.2098.1683273431.290936.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Not used that in a while, but IIRC it only has the fuzzy matching in 
grid mode doesn't it? The reason I like dmenu is it is lightweight and 
doesn't have a ton of dependencies though


Isn't also the one the author says to use Wayland only, as well?


On 5/5/23 08:43, Linux for blind general discussion wrote:
> sgtk-menu works well: https://github.com/nwg-piotr/sgtk-menu
> The author now recommends other he also develop but didn't try them
>
> I ship it in Slint for i3 with I38 https://git.stormux.org/storm/I38
>
> Cheers,
> Didier

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

