Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E7FC13E06CA
	for <lists+blinux-list@lfdr.de>; Wed,  4 Aug 2021 19:33:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628098389;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TL762TUwQvaeSPmJRxH8vg47eVgKaicfmRR7h2Xqnho=;
	b=icdwicOSid2OI6cip9wvMk2mszZkvn8vaTRoP6Wh96RZOd3mb7VcJqgDETI3LdQ4aT0ltC
	Jr24t1nB3ShhwLGCHFkvFnR+GFWw6kEQQhQLTAq+qx0c2pFwHWecMY1+n77BY9xzgmLh1s
	PXdPwc9ldlX5vtBYaX/PmAGypltsGk8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-489-GxzBJgSHM3Wag4JPqvqjzA-1; Wed, 04 Aug 2021 13:33:07 -0400
X-MC-Unique: GxzBJgSHM3Wag4JPqvqjzA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A1EEE87D543;
	Wed,  4 Aug 2021 17:33:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E08C61B480;
	Wed,  4 Aug 2021 17:33:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D0C9618095C2;
	Wed,  4 Aug 2021 17:32:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 174HV3ak009147 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 13:31:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3F37C101B890; Wed,  4 Aug 2021 17:31:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3B08E101B876
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 17:30:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B29F680158D
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 17:30:59 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-373-of4nAx3cN3S8MzklcLH70w-1; Wed, 04 Aug 2021 13:30:57 -0400
X-MC-Unique: of4nAx3cN3S8MzklcLH70w-1
Received: by mail-qt1-f175.google.com with SMTP id d9so1883549qty.12
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 10:30:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=uEU2zE6n5tunuTlRneioez12CGIVY5cbcKht5roG6Vo=;
	b=lnzHL0v+lOWhIzLP2ct5uUs8N5mkiSnG8mRvplP9JgI37bBhE73W6/+ts3BUo2n3Di
	XkTR52BzuByMpsjs+5AJ0Fc7pi9wbUSoQXoN+x466oO+8t+hWtqTgKXvKkx75jmHdI55
	owKY+MN/262UkDWnvQEvh0HczxRdSJndhJv1iQtkvshmqgyv/axf88wGLhHBQMWKuJhv
	/gHV6MON8668zbIVZ6H4m/ciy8CI1cIRnVHokY/tdD4iqp4KBL0ACcV+zMkC/xVuLJAL
	Oh9UxldQTZoOYKISbmgo/USGlsOyYiat+nSXyldR7vxSZj0afESA+osobZzBvfzAn9Zu
	X1Zg==
X-Gm-Message-State: AOAM531EuavLHW5WmsQBAYzikdhOuwQq9gE2Hjo7c2ZLxo7I7Wwo4N9l
	Xce6RXqaczqyAtcEgSZo5SAAhrHJMMFRXQ==
X-Google-Smtp-Source: ABdhPJyKFu2r0tdJQ87QK4AoTUyR9Pse8OKFyl5ePbulIu1PLqtfKQTB/3CZItz2gVhosn0U133D6g==
X-Received: by 2002:ac8:7fcd:: with SMTP id b13mr639831qtk.314.1628098256473; 
	Wed, 04 Aug 2021 10:30:56 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::cae5])
	by smtp.gmail.com with ESMTPSA id
	d19sm1512023qkn.94.2021.08.04.10.30.55 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 04 Aug 2021 10:30:56 -0700 (PDT)
Subject: Re: Solus DE observations
To: blinux-list@redhat.com
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
Message-ID: <09938f56-8ec8-a34b-65a3-9151aaab74b9@gmail.com>
Date: Wed, 4 Aug 2021 13:30:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SW5zdGFsbGluZyBNaW50IHdhcyBleGFjdGx5IGxpa2UgaW5zdGFsbGluZyBVYnVudHUsIGFzIGZh
ciBhcyBJIHJlY2FsbC7CoCAKTWF5YmUgeW91IGdyYWJiZWQgdGhlIENpbm5hbW9uIGVkaXRpb24g
bGFzdCB0aW1lPwoKCkNoZWVycywKCgpEYXZlwqAgSC4KCgoKU2VudCBmcm9tIG15IExlbm92byBU
aGlua3BhZCwgcnVubmluZyBTbGludCBHTlUvTGludXguICBodHRwczovL3NsaW50LmZyIGZvciBp
bmZvCgpPbiA4LzQvMjEgNzowNSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPiBIb3cgd2FzIGxpbnV4IG1pbnQgYW5kIG9yY2EgZHVyaW5nIGluc3RhbGxpbmc/
Cj4KPj4gT24gQXVnIDMsIDIwMjEsIGF0IDk6MjMgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+PiBUaGlzIG1l
c3NhZ2UgaXMgY29taW5nIGZyb20gbXkgU29sdXMgTWF0ZSBpbnN0YWxsYXRpb24uICBNYXRlIGFu
ZCB0aGUgYXBwbGljYXRpb25zIHdvcmsgYXMgZXhwZWN0ZWQsIHdpdGggdGhlIGV4Y2VwdGlvbiBv
ZiBzcGVlY2ggZGlzcGF0Y2hlci4gIEFsbCBvdGhlciBhdWRpbyBzb3VuZHMgZmluZSwgYnV0IHNw
ZWVjaCBpcyBhIGxpdHRsZSBjaG9wcHkuICBBbHNvLCBJIGZvdW5kIHRoYXQgc29tZSBwYWNrYWdl
cyBhcmVuJ3QgaW4gdGhlIHJlcG9zLCBuYW1lbHkgTElPUyBhbmQgQ2hpcnAuICBJIGRvbid0IGtu
b3cgd2hhdCB0aGUgYnVpbGQgZXhwZXJpZW5jZSBpcyBsaWtlIGluIFNvbHVzLCBhbmQgaGF2ZSB0
aG9zZSBwYWNrYWdlcyBpbiBteSBTbGludCBzeXN0ZW0uIFNwZWFraW5nIG9mIFNsaW50LCBoYXZl
IHlvdSBjb25zaWRlcmVkIGl0Pwo+Pgo+Pgo+PiBJIGhhdmUgdXNlZCBMaW51eCBNaW50IE1hdGUg
ZWRpdGlvbiwgYW5kIGZpbmQgdGhhdCB0aGUgYWNjZXNzaWJpbGl0eSB3b3JrcyBmaW5lIGluIHRo
ZSBhcHBzIGFuZCBvbiB0aGUgZGVza3RvcCBhbmQgbWVudXMuICBJIGZpbmQgdGhhdCBJIGhhdmUg
dG8gdXNlIGZsYXQgcmV2aWV3IG9uIE1pbnQgTWF0ZSdzIGJvdHRvbSBwYW5lbCwgYW5kIHRoZSBi
YXR0ZXJ5ICBjaGFyZ2UgaW5kaWNhdG9yIGRvZXNuJ3Qgc2VlbSB0byByZWZyZXNoIHByb3Blcmx5
Lgo+Pgo+Pgo+Pgo+PiBIVEgsCj4+Cj4+Cj4+Cj4+IERhdmUgIEguCj4+Cj4+Cj4+Cj4+Cj4+IFNl
bnQgd2l0aCBUaHVuZGVyYmlyZCBhbmQgU29sdXMgR05VL0xpbnV4Lgo+Pgo+PiBPbiA4LzMvMjEg
MTA6MTMgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBE
YXZlLCBJIGhhdmUgdXNlZCBnbm9tZSBhbmQgbWF0ZSB3aXRoIHVidW50dS4KPj4+IEkgdGhvdWdo
dCBvZiBsaW51eCBtaW50LCBhbmQgdHJpZWQgaXQsIGJ1dCBvcmNhIHdvdWxkIG5vdCB3b3JrLgo+
Pj4gSGFkIHlvdSB0cmllZCBtaW50Pwo+Pj4gQXMgdG8gU29sdXMsIGlzIHRoYXQgd29ya2FibGU/
Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

