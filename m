Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6D16C7EC3
	for <lists+blinux-list@lfdr.de>; Fri, 24 Mar 2023 14:29:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679664596;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fiH6AcGmS/3aKebCX6H/ejb31Um80N3nrOo2xpLF5FA=;
	b=XRuBIutHIx2fjRWqMETM7YsReZqFjmCKAetDNgggc9REL4uKhIywrnBBKz+P5gf/LLsNGv
	kw2REOwugvYlthIOULI1hHdmyrh+PJkxB4QV/rh1ESTei2Rtyp/5npzsHEYEwVwZoWAeCD
	gkl25AlQ433RdxZemq0f2mGMO2j+qXk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-619-Hx7DL-P3OXOuQnt4jxXs8A-1; Fri, 24 Mar 2023 09:29:52 -0400
X-MC-Unique: Hx7DL-P3OXOuQnt4jxXs8A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B20DB85C06E;
	Fri, 24 Mar 2023 13:29:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6D9251121314;
	Fri, 24 Mar 2023 13:29:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 462D91946A69;
	Fri, 24 Mar 2023 13:29:48 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 24 Mar 2023 14:27:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [orca] Odilia, the new Linux screenreader written in Rust,
 reaches 0.1.0 (fwd)
To: blinux-list@redhat.com
References: <mailman.1101.1679499219.636362.blinux-list@redhat.com>
 <mailman.1130.1679509316.636367.blinux-list@redhat.com>
 <mailman.1311.1679555916.636358.blinux-list@redhat.com>
 <mailman.1401.1679570769.636358.blinux-list@redhat.com>
 <mailman.1539.1679608558.636362.blinux-list@redhat.com>
 <mailman.1625.1679647909.636358.blinux-list@redhat.com>
 <mailman.1557.1679661919.636361.blinux-list@redhat.com>
In-Reply-To: <mailman.1557.1679661919.636361.blinux-list@redhat.com>
Message-ID: <mailman.1572.1679664587.636361.blinux-list@redhat.com>
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
Content-Language: de-DE, en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Indeed,
we use dbus-broker here. this brings a small performance boost as well. 
still the bottleneck in this game.


Am 24.03.23 um 13:45 schrieb Linux for blind general discussion:
>
> On 24/3/23 04:46, Linux for blind general discussion wrote:
>> Just a small side note. As slow as python might look like, the 
>> biggest bottleneck might be transferring huge AT structures using 
>> dbus (as dbus is hell slow) or applications flooding events. And 
>> those issues needs to get fixed on other places in any way.
> Efforts to implement DBus at the kernel level haven't progressed in 
> recent years either. However, there are recent notes in the AT-SPI 
> repository suggesting that developers intend to optimize the protocol 
> at some stage.
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

