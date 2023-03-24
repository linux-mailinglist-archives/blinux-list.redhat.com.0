Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 488376C7E3D
	for <lists+blinux-list@lfdr.de>; Fri, 24 Mar 2023 13:45:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679661942;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Gu2V6QY2hxKmbDrzVdcnwOZCxJCnBMM9X1en+I650T8=;
	b=RjhiOsxmYKKXiMMykbC1r4LtjJfAxLXITdwdFTwVILnCwQk3Czn6XQasycObBBN/lSi68K
	uqIat2MrLIFp2YW9kcf/34seQnffSNzyJN/qJFTxa1YyKY47aKYAQHcDVIjMDWCl6hQPL8
	OqaO75zsQuHhUJhk7ma6phRcip8e108=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-492-WdJ5fkwmOiukjkXmByKq1Q-1; Fri, 24 Mar 2023 08:45:39 -0400
X-MC-Unique: WdJ5fkwmOiukjkXmByKq1Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3C51F1C09040;
	Fri, 24 Mar 2023 12:45:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A3944140EBF4;
	Fri, 24 Mar 2023 12:45:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D38251946A69;
	Fri, 24 Mar 2023 12:45:19 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 24 Mar 2023 08:45:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
To: blinux-list@redhat.com
References: <mailman.1101.1679499219.636362.blinux-list@redhat.com>
 <mailman.1130.1679509316.636367.blinux-list@redhat.com>
 <mailman.1311.1679555916.636358.blinux-list@redhat.com>
 <mailman.1401.1679570769.636358.blinux-list@redhat.com>
 <mailman.1539.1679608558.636362.blinux-list@redhat.com>
 <mailman.1625.1679647909.636358.blinux-list@redhat.com>
Subject: Re: [orca] Odilia, the new Linux screenreader written in Rust,
 reaches 0.1.0 (fwd)
In-Reply-To: <mailman.1625.1679647909.636358.blinux-list@redhat.com>
Message-ID: <mailman.1557.1679661919.636361.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"


On 24/3/23 04:46, Linux for blind general discussion wrote:
> Just a small side note. As slow as python might look like, the biggest 
> bottleneck might be transferring huge AT structures using dbus (as 
> dbus is hell slow) or applications flooding events. And those issues 
> needs to get fixed on other places in any way.
Efforts to implement DBus at the kernel level haven't progressed in 
recent years either. However, there are recent notes in the AT-SPI 
repository suggesting that developers intend to optimize the protocol at 
some stage.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

