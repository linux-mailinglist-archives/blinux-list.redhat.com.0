Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2050A44E056
	for <lists+blinux-list@lfdr.de>; Fri, 12 Nov 2021 03:34:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636684488;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hqEVwk3ckSVrnQOFu+7n6wxODJArDVB1HQy0SZG6pbM=;
	b=YZgBG0u5OrdAmvXMGKFBt5tPB1mzz0OQei6UrMQ7flrP8c25bKVo1Mj2zM9IV8VrE5E5fL
	T6H6+PyovuzyIfg2tKtOdaeC2k4NxCdfyw0pIY7INtIALzpmnbWx4P916DyVKis9R1pyl7
	TSLdMjvfidFkFQ9UGDk7mFuRxQAAfK4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-331-PzNINT-ROfqxn7Fk_W1cDA-1; Thu, 11 Nov 2021 21:34:44 -0500
X-MC-Unique: PzNINT-ROfqxn7Fk_W1cDA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4977E87504C;
	Fri, 12 Nov 2021 02:34:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D70D5F4EC;
	Fri, 12 Nov 2021 02:34:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A48C51819AC1;
	Fri, 12 Nov 2021 02:34:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AC2YX0s009016 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 11 Nov 2021 21:34:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DDA0E404727D; Fri, 12 Nov 2021 02:34:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D99B4404727C
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 02:34:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C064B185A7B4
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 02:34:32 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com
	[209.85.219.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-465-XEksrWS5N2eY7U-r04OoDw-1; Thu, 11 Nov 2021 21:34:31 -0500
X-MC-Unique: XEksrWS5N2eY7U-r04OoDw-1
Received: by mail-qv1-f51.google.com with SMTP id kl8so846749qvb.3
	for <blinux-list@redhat.com>; Thu, 11 Nov 2021 18:34:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=oaT3H/8NUmf660KeJt71nOQ8jzk6Nr87COxWs1fFsyY=;
	b=AL+RyNvS7I3cyf7qJ7PcTaDm4ssyWg3SOR4zgzQ8relD+PRnWZwAA2SJeQEiUpBHR/
	Jf5bs00whmhzNeOIwK6v+mIx5zYETw15sU7c2pExZwK8E8yOJVlI3sEJ7WPfsF5EDrUF
	IQLQ25Pqr/uUmaTSbPlteP6X+s64ZcJK77Nbo7KA9jJ1A5OAsCCaqI3p6tAOakw7N3gB
	K6xIrj9y67n2TOqrxyEBumOR5tg9IOnvJezT/CcyhGHgiXH3XJtncrXyrZcBjnXmxFj5
	Kb4GkiDQj8h/t0jl3xNpM7lqZWE4GDapVhNSILsJThth0YBLQvjm5wQWjjclqhvlGtbR
	Q6sQ==
X-Gm-Message-State: AOAM530nwFOe8sDrEIfa32Y3vKAFuE5BjqmzOWShUGMKtwC5B+FCvkf0
	YRLRRbJtE78Oodty3y0FaW7zAvnChjs7QQ==
X-Google-Smtp-Source: ABdhPJzGPWYR/rPOT7BftIV1v/Sfy52RH5BcjjX3RIFJg8fkV0DRk5ATQpk6Qvh6AGFGzlkdUVV+tw==
X-Received: by 2002:ad4:50c7:: with SMTP id e7mr11394895qvq.53.1636684470549; 
	Thu, 11 Nov 2021 18:34:30 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::11])
	by smtp.gmail.com with ESMTPSA id
	a38sm1155496qkp.80.2021.11.11.18.34.29 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 11 Nov 2021 18:34:30 -0800 (PST)
Subject: Re: How do you format a disk using slint?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c8bb974c-f712-d963-1ecb-21d4b398d110@gmail.com>
	<45dfbbc5-04c2-9f49-a595-581537acbafe@gmail.com>
Message-ID: <8ce70d89-dc7d-f8e9-6b8a-44d48d4ace4c@gmail.com>
Date: Thu, 11 Nov 2021 21:34:29 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <45dfbbc5-04c2-9f49-a595-581537acbafe@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzIERhdmUuCgpOb3csIGlmIEkgaXNzdWUgdGhpcyBjb21tYW5kCgpzbGFwdC1zcmMgZ25v
bWUtZGlzay11dGlsaXR5CgphcyByb290LCB3b3VsZCB0aGUgc3lzdGVtIGFkZCBhIG5ldyB1dGls
aXR5IHRvIHRoZSBtZW51PyBPciBkbyBJIGhhdmUgdG8gCmFkZCBpdCBteXNlbGY/wqAgSWYgc28s
IHdoZXJlIGNhbiBJIGZpbmQgdGhpcyB1dGlsaXR5IG9uY2UgSXQgYmVjb21lcyAKYXZhaWxhYmxl
PwoKCkNoZWVycywKCklicmFoaW0KCk9uIDExLzExLzIxIDk6MDggUE0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gc2xhcHQtc3JjIGdub21lLWRpc2stdXRpbGl0
eSAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

