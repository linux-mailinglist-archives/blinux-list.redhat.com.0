Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9E2743DF9A5
	for <lists+blinux-list@lfdr.de>; Wed,  4 Aug 2021 04:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628043867;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gwOxI6DdmjytrACpRjH+i/zRNjsvk62hVFJ4CgaddxY=;
	b=KcD8Ib3SdjH6FUr68aGWPIdo/ZCbqgAXYUhzhwGLuD9mTXrqdsRoPJSvilEaXKKAWOuesl
	JZRXwnUJpZbSd/rAAhwR43vaY1ZyehkqYVdNNw3+2OCNhUB3D9ZWsjxUMxm+YzS/KeAiaj
	CVR/Xb5ZW77xrGfzf6cRgzjN0HoTddk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-75-IJ-I9Le-M4CVKZ40vkVe8w-1; Tue, 03 Aug 2021 22:24:25 -0400
X-MC-Unique: IJ-I9Le-M4CVKZ40vkVe8w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BD7428799EE;
	Wed,  4 Aug 2021 02:24:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5DEE71981C;
	Wed,  4 Aug 2021 02:24:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6DB58181A6E2;
	Wed,  4 Aug 2021 02:24:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1742O7Nx024787 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 3 Aug 2021 22:24:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 604E4E38D7; Wed,  4 Aug 2021 02:24:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A6B8E38CA
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 02:24:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AEE52800883
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 02:24:03 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
	[209.85.222.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-96-8eCzMH7KOBGw0dInxhqx6A-1; Tue, 03 Aug 2021 22:24:01 -0400
X-MC-Unique: 8eCzMH7KOBGw0dInxhqx6A-1
Received: by mail-qk1-f181.google.com with SMTP id a19so1461681qkg.2
	for <blinux-list@redhat.com>; Tue, 03 Aug 2021 19:24:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=R5ieTWkcXF0RIfpBkLMHy16bggqH3B+8iTX/ZkBjVFw=;
	b=Qj1NfoKBLtXhPJR/2ur37zPmWriKWQ29mmwNY0xwq7MXzH9/0xOq7B8KktXetBEvyn
	80+xKQkRVAohv2F1bCCqyqnOIAwSHHjiMkG/TqOsaUFM/LlsFvUOHep3qgCUbxzY/Wmf
	h+oa1RxVF4je8e80+9wlGLkvsTznOZ/nFZiiJs/Zaw+l7onsp9v30qSYR94pabreQfTm
	0X0UaYQMLNlOdADWIpWn4VZB8RFLZnFe9OlXm6MojzgA7H+xuCnvpFnpsxuu9UUtRIr+
	sFgX1cTF5ghBAGFmZrjFcy+tUsMSmF5y3TuZz7xMwPZb5sD3Ht8gM1+feVjzzu78j2WE
	/LoA==
X-Gm-Message-State: AOAM531M1HXma8UQSJcboWRqVmotbmyfdAATgvvzqYLkUZPW/IPYh1nd
	sWXrQjZerSf1d+UoY/pMSmjThQTbl08Wfg==
X-Google-Smtp-Source: ABdhPJw/clu53/X1yddot6DXcZro6g0mnskcSc2Fx5VIoBUTUOxO7OyeDhKy/8Qmhvq8iSXWvOdRxw==
X-Received: by 2002:a05:620a:12d8:: with SMTP id
	e24mr22938844qkl.354.1628043840844; 
	Tue, 03 Aug 2021 19:24:00 -0700 (PDT)
Received: from ?IPv6:2601:192:4c80:1420::db66? ([2601:192:4c80:1420::db66])
	by smtp.gmail.com with ESMTPSA id m6sm465880qki.47.2021.08.03.19.24.00
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 03 Aug 2021 19:24:00 -0700 (PDT)
Subject: Re: Solus DE observations
To: blinux-list@redhat.com
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
Message-ID: <2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
Date: Tue, 3 Aug 2021 22:23:49 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhpcyBtZXNzYWdlIGlzIGNvbWluZyBmcm9tIG15IFNvbHVzIE1hdGUgaW5zdGFsbGF0aW9uLsKg
IE1hdGUgYW5kIHRoZSAKYXBwbGljYXRpb25zIHdvcmsgYXMgZXhwZWN0ZWQsIHdpdGggdGhlIGV4
Y2VwdGlvbiBvZiBzcGVlY2ggZGlzcGF0Y2hlci7CoCAKQWxsIG90aGVyIGF1ZGlvIHNvdW5kcyBm
aW5lLCBidXQgc3BlZWNoIGlzIGEgbGl0dGxlIGNob3BweS7CoCBBbHNvLCBJIApmb3VuZCB0aGF0
IHNvbWUgcGFja2FnZXMgYXJlbid0IGluIHRoZSByZXBvcywgbmFtZWx5IExJT1MgYW5kIENoaXJw
LsKgIEkgCmRvbid0IGtub3cgd2hhdCB0aGUgYnVpbGQgZXhwZXJpZW5jZSBpcyBsaWtlIGluIFNv
bHVzLCBhbmQgaGF2ZSB0aG9zZSAKcGFja2FnZXMgaW4gbXkgU2xpbnQgc3lzdGVtLiBTcGVha2lu
ZyBvZiBTbGludCwgaGF2ZSB5b3UgY29uc2lkZXJlZCBpdD8KCgpJIGhhdmUgdXNlZCBMaW51eCBN
aW50IE1hdGUgZWRpdGlvbiwgYW5kIGZpbmQgdGhhdCB0aGUgYWNjZXNzaWJpbGl0eSAKd29ya3Mg
ZmluZSBpbiB0aGUgYXBwcyBhbmQgb24gdGhlIGRlc2t0b3AgYW5kIG1lbnVzLsKgIEkgZmluZCB0
aGF0IEkgaGF2ZSAKdG8gdXNlIGZsYXQgcmV2aWV3IG9uIE1pbnQgTWF0ZSdzIGJvdHRvbSBwYW5l
bCwgYW5kIHRoZSBiYXR0ZXJ5wqAgY2hhcmdlIAppbmRpY2F0b3IgZG9lc24ndCBzZWVtIHRvIHJl
ZnJlc2ggcHJvcGVybHkuCgoKCkhUSCwKCgoKRGF2ZcKgIEguCgoKCgpTZW50IHdpdGggVGh1bmRl
cmJpcmQgYW5kIFNvbHVzIEdOVS9MaW51eC4KCk9uIDgvMy8yMSAxMDoxMyBQTSwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBEYXZlLCBJIGhhdmUgdXNlZCBnbm9t
ZSBhbmQgbWF0ZSB3aXRoIHVidW50dS4KPiBJIHRob3VnaHQgb2YgbGludXggbWludCwgYW5kIHRy
aWVkIGl0LCBidXQgb3JjYSB3b3VsZCBub3Qgd29yay4KPiBIYWQgeW91IHRyaWVkIG1pbnQ/Cj4g
QXMgdG8gU29sdXMsIGlzIHRoYXQgd29ya2FibGU/CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0

