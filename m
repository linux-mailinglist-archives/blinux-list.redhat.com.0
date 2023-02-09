Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ADACA6910B5
	for <lists+blinux-list@lfdr.de>; Thu,  9 Feb 2023 19:50:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675968618;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KxrQfsXlgaSJzad9so5LT6uKbWop0GSk69StmADdWTg=;
	b=DY8G2tVeswl0Phhc1hsqmxFExE8tux0NKRxE32fo5ZRW4rxBBDFXuKpquj1JB2dwVud2Wx
	VgEapcHEMVVM6wQxhQN/Hftzpc6De5ck65oF2zLcivFSgH9PI+vUir+kZ7sUPXO6Fwy29N
	Asapj/F/lBGBBeN1+ynxRsI/mfTsff8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-626-zZbUoZU4O0-OQJe8NqQmVA-1; Thu, 09 Feb 2023 13:50:14 -0500
X-MC-Unique: zZbUoZU4O0-OQJe8NqQmVA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9425F3C0F425;
	Thu,  9 Feb 2023 18:50:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C0992492C3E;
	Thu,  9 Feb 2023 18:50:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 71AB11946597;
	Thu,  9 Feb 2023 18:49:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 9 Feb 2023 19:49:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: Can I Launch Alpine on Startup with a higher Priority?
To: blinux-list@redhat.com
References: <mailman.5622.1675966853.8172.blinux-list@redhat.com>
In-Reply-To: <mailman.5622.1675966853.8172.blinux-list@redhat.com>
Message-ID: <mailman.5509.1675968584.8176.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpMZSAwOS8wMi8yMDIzIMOgIDE5OjE0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIGEgw6ljcml0wqA6Cj4gLi4uIElkZWFsbHkgaXQgd291bGQgYmUgbmljZSBpZiB5b3Ug
Y291bGQganVzdCBydW4KPiByZW5pY2Ugd2l0aCBhIG5hbWUgb2YgYW4gYXBwbGljYXRpb24sIGJ1
dCBldmVuIHdvcnNlLCB5b3Ugd291bGRuJ3Qga25vdyB3aGF0Cj4gcHJvY2VzcyBudW1iZXIgaXQg
d2lsbCBiZSB1c2VpbmcuIFRoYW5rcyBzbyBtdWNoIGluIGFkdmFuY2UgZm9yIGFueSB0aXBzLgoK
c3RhcnQgYWxwaW5lLCB0aGVuICB0eXBlOgpyZW5pY2UgPG9wdGlvbnM+ICQocHMgLUMgYWxwaW5l
IC0tbm8taGVhZGVycyAtbyBwaWQpCgpDaGVlcnMsCkRpZGllcgotLQpEaWRpZXIgU3BhaWVyCmRp
aWRpZXJhdHNsaW50ZG90ZnIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

