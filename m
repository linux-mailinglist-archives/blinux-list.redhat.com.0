Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 590D03DC1B1
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jul 2021 01:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627688910;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WomXV4g/u8objcXlCg2erNRYtqN+9xqI7IiJSrncM4k=;
	b=aoFTUZMhluIX+krzhKTOvQw/FkkC/jwJAiheLqzZTFQ/j9YtaAyumD1lzLPD/ivHMvBbuV
	nhhYlyasBlyIIuytgTnwUvpAL6INom07IbER5wwCTYRrOPoYHBTl56yC0ncjEQhkQGUoeL
	Rj6Kjgy54el+XvxXMuC7by9PFD2uQW4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-458-5LBSbLzlPyu1oE4d3eH9jQ-1; Fri, 30 Jul 2021 19:48:28 -0400
X-MC-Unique: 5LBSbLzlPyu1oE4d3eH9jQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 820E734820;
	Fri, 30 Jul 2021 23:48:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EAFC919C46;
	Fri, 30 Jul 2021 23:48:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D661D181A2A6;
	Fri, 30 Jul 2021 23:48:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16UNgbTC000838 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Jul 2021 19:42:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A330F20877C0; Fri, 30 Jul 2021 23:42:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9ECAA20877BD
	for <blinux-list@redhat.com>; Fri, 30 Jul 2021 23:42:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 82827800260
	for <blinux-list@redhat.com>; Fri, 30 Jul 2021 23:42:34 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
	[209.85.219.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-190-jSwQflepNeebVT4PxITDWA-1; Fri, 30 Jul 2021 19:42:32 -0400
X-MC-Unique: jSwQflepNeebVT4PxITDWA-1
Received: by mail-qv1-f41.google.com with SMTP id d3so6067717qvq.6
	for <blinux-list@redhat.com>; Fri, 30 Jul 2021 16:42:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=IVMx1STyEEPZhWMtIRWTApyC0H4aG9nTdr2zfbquOTs=;
	b=TTHjAUmBC+v1+QPu2OebQx7qd2+js9h0fUgJxAUpeq/CbcvGtFL0x5qWkMCfIqfLfv
	2X4FIL19hNOqltcLmCvsOjS3oiFXexy3looCK29ANOZwlGyDFUpJy/mONZuA1hA7VU2L
	EtiarwocOvJuNsDBc0RzKzPScBxlE1G5Bc3aLqf8FqYsFihe1rBKA1WWunkuwuphsfFB
	CYD1Gu3HITKIQAlXikIhs2M5/22lXVt+xegdLddXbuBUrg1BgeIIlbBRtmJjWnayovFs
	SyLo7aXiR3jgYmvvAxZFqYTgCkMYib0HMYt/7BTRqvxJdbGGKubkxcpuLYA8DD3Zj1nr
	5ZWg==
X-Gm-Message-State: AOAM53316IivLM7KNOM8khGlP7+PAQ7HA4PiK0bScpLdTVphd53/01OS
	itlJxZPnRxMpjUO013RnOSkmZYLqilea4w==
X-Google-Smtp-Source: ABdhPJzINCpV0AQWPmp3eHO2g1AMpvRKXFdCGhCbHNges/SmT2L1oOjR8UMk8ln/YPLCCv3XjP0vVA==
X-Received: by 2002:a05:6214:902:: with SMTP id
	dj2mr5461275qvb.23.1627688551616; 
	Fri, 30 Jul 2021 16:42:31 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::adcc])
	by smtp.gmail.com with ESMTPSA id
	h10sm1639150qka.83.2021.07.30.16.42.30 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 30 Jul 2021 16:42:31 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Solus and Broken Speech
Message-ID: <6fbf8e0f-bfb0-92ea-8b0b-7e271cb3a4a1@gmail.com>
Date: Fri, 30 Jul 2021 19:42:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKSSBnYXZlIHRoZSBsYXRlc3QgTWF0ZSBzcGluIG9mIHRoaXMgZGlzdHJvIGEgbG9vaywg
YW5kIGxpa2Ugd2hhdCBJIHNlZSwgCmluIGdlbmVyYWw7IG1heSBwdXQgaXQgb250byBvbmUgb2Yg
bXkgbWFjaGluZXMuwqAgSXQgc2VlbXMgdG8gb2ZmZXIgdGhlIAplYXNlIGFuZCBjb252ZW5pZW5j
ZSBvZiBzb21ldGhpbmcgbGlrZSBVYnVudHUsIGJ1dCwgaXQncyBhIHJvbGxpbmcgCnJlbGVhc2Uu
wqAgT24gdGhlIGxpdmUgc3lzdGVtLCBJIG5vdGlzZSBhIHBlcnNpc3RlbnQgY2hvcHBpbmVzcyBv
ciAKc2NyYXRjaGluZXNzIG9mIHRoZSBzcGVlY2guwqAgTWF5YmUgc29tZXRoaW5nIHdpdGggc3Bl
ZWNoIGRpc3BhdGNoZXIgYW5kIAp0aGUgYXVkaW8gc3lzdGVtP8KgIE90aGVyIGF1ZGlvIGlzIG5v
dCBjaG9wcHkuwqAgTWF5YmUgcGVvcGxlIHdobyBhcmUgCnVzaW5nIFNvbHVzLCBvbiBhIHJlZ3Vs
YXIgYmFzaXMsIGNhbiBzdWdnZXN0IGNvbmZpZ3VyYXRpb24gY2hhbmdlcywgCmFmdGVyIHRoZSBp
bnN0YWxsLCB0byBzb2x2ZSB0aGUgc3BlZWNoIHByb2JsZW0/CgoKClRoYW5rcywKCgoKRGF2ZcKg
IEguCgoKU2VudCB3aXRoIFRodW5kZXJiaXJkIGFuZCBTbGludAoKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdA==

