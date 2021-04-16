Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CF0CB361EE3
	for <lists+blinux-list@lfdr.de>; Fri, 16 Apr 2021 13:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618573099;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=52jkUBmH1KY/pH9cHBDGXdhNVlshATpkloLaVLy/7lw=;
	b=Nf2Zzv+Cy5jQce8JVUdOFW7mq8jkf1t6CQJXeNT+OH45BY78HmYzWTzh8TWNWkIb0nNbo8
	iUF2dDAxRMcOdgkCDegsJadTBOeXcERsTitWFAFsd6gZ3cat0yAP7CF7dbSU+WL24mo1jT
	iynJlivdkjsc0bFwM4eKiKogXaTocbE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-281-liRgl1XjPW6IJxmMd0fG9g-1; Fri, 16 Apr 2021 07:38:17 -0400
X-MC-Unique: liRgl1XjPW6IJxmMd0fG9g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5A9936D241;
	Fri, 16 Apr 2021 11:38:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 002CF6294D;
	Fri, 16 Apr 2021 11:38:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4287C44A5E;
	Fri, 16 Apr 2021 11:38:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13GBYVnM016452 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 07:34:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0F1EA10439AC; Fri, 16 Apr 2021 11:34:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0A484103F287
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 11:34:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7EE93805F44
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 11:34:28 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
	[209.85.218.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-300-TFNtgAzHPvqJOmVPviUNVw-1; Fri, 16 Apr 2021 07:34:26 -0400
X-MC-Unique: TFNtgAzHPvqJOmVPviUNVw-1
Received: by mail-ej1-f50.google.com with SMTP id w23so25839781ejb.9
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 04:34:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=zEGRPLEyL7qh378Nn4Mo6J8wUGLAtEXUbmDx6WLRZqc=;
	b=S5VzdN3kZ7eMeX3382Jr86KcZCMwBc9EizHv9pNZFp2yzYoac7X2rfs1gIWA3PEJ/L
	sh6HTYvEJIGyiY0JYYYyGuJv3kxyMH2qsZwQkqJBvcU52qxk/QgdamZwEBmPALj59yZz
	Ciyy+K3gYfAAqsiH+BAqdtqUZ/Oc/Yo3+9otDVTvQiCEksCNc4/MPF4/Qvtk6Gf2zKV+
	8VP4J9T77t0jN9jgpJkZX8Jan+yEhgadGFdexKAkHr7T/eo+giRUydBZaelB01w7I353
	LaQSaMZRJQDgwjq7bcBs6OoU0tH/0uP2qiL/UrarOmwRP8nYQ1YZZNxfTd6qmQyh7Zdj
	6M3w==
X-Gm-Message-State: AOAM5324rXZtdv7tjTtxZ79+BZKTOhycrl44qMswLJAfPFZjdl4ogJEo
	5IncbWK/5Z9DoUhhOc+Vu9o1qgmJojv9yQ==
X-Google-Smtp-Source: ABdhPJwE9A2rh7BpAuJCh0Tz13iJhgKLxQ2vwns9A4Yd63GjDbwWSPS2jHh4gSKaznK0pMuTvrV7KQ==
X-Received: by 2002:a17:906:49d3:: with SMTP id
	w19mr7933105ejv.116.1618572865095; 
	Fri, 16 Apr 2021 04:34:25 -0700 (PDT)
Received: from [192.168.1.8] (net-188-153-130-61.cust.vodafonedsl.it.
	[188.153.130.61])
	by smtp.gmail.com with ESMTPSA id o17sm452110edt.92.2021.04.16.04.34.24
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 16 Apr 2021 04:34:24 -0700 (PDT)
Subject: Re: Would you be interested in having natural sounding TTS voices by
	Readspeaker on Linux? demo link included
To: blinux-list@redhat.com
References: <161854841366.7.5044640704122711519.5900574@slmail.me>
Message-ID: <4c73ecb6-4262-d24a-fdb6-bcb168d8f296@gmail.com>
Date: Fri, 16 Apr 2021 07:34:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <161854841366.7.5044640704122711519.5900574@slmail.me>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gdGhlcmUsCgoKVGhlIHBvc3NpYmlsaXR5IG9mIGhhdmluZyB0aGUgUmVhZHNwZWFrZXIg
dm9pY2VzIG9uIExpbnV4IHNvdW5kcyBxdWl0ZSAKaW50ZXJlc3RpbmcgYW5kIHVzZWZ1bCB0byBt
ZSwgYmVjYXVzZSwgYXMgb3RoZXJzIGFscmVhZHkgc2FpZCwgdGhlcmUgYXJlIApmZXcgaGlnaCBx
dWFsaXR5IHZvaWNlcyBwcm92aWRlcnMgYXQgdGhlIG1vbWVudCwgYW5kIGJlY2F1c2UgaWYgd2Ug
aGF2ZSAKbW9yZSBoaWdoIHF1YWxpdHkgdm9pY2VzIHRvIGNob29zZSBmcm9tLCB3ZSdkIGhhdmUg
bW9yZSBwb3NzaWJpbGl0aWVzLCAKYW5kIG1heWJlLCBtb3JlIGZvbGsgd291bGQgc3RhcnQgdXNp
bmcgTGludXggYXMgd2VsbCwgd2hvIGtub3dzPwoKQmVzdCByZWdhcmRzLgpGcmFuY2lzY28KT24g
NC8xNi8yMSAxMjo0NiBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKPiAJCQkJCj4gSGkgZXZlcnlvbmUsCj4gVGhpcyBpcyBTTC4KPiBTb21lIG9mIHlvdSBtYXkg
cmVtZW1iZXIgdGhhdCBsYXN0bW9udGgsIENoaW1lIGFuZCBJIHdlcmUgdHJ5aW5nIHRvIGZpbmQg
YSB3YXkgdG8gbGVnYWxseSBwb3J0IEl2b25hdm9pY2VzIHRvIExpbnV4Lgo+IFdlIGhhdmUgYmVl
biBpbiBjb21tdW5pY2F0aW9ucyB3aXRoUmVhZHNwZWFrZXIsIGEgY29tcGFueSB3aGljaCBjcmVh
dGVzIGl0cyBvd24gcXVhbGl0eSBUVFMgdm9pY2VzIGFuZGlzIGFsc28gYW4gb2ZmaWNpYWwgZGlz
dHJpYnV0b3Igb2YgSXZvbmEuCj4gVW5mb3J0dW5hdGVseSwgZHVlIHRvcmVzdHJpY3Rpb25zIGFu
ZCBpbmNvbXBhdGliaWxpdHksIHdlIGFyZSB1bmFibGUgdG8gYnJpbmcgSXZvbmEgdG9MaW51eCBh
dCB0aGlzIHRpbWUuCj4gSG93ZXZlciwgUmVhZHNwZWFrZXIgaXMgd2lsbGluZyB0byBjb25zaWRl
cnRoZSBwb3NzaWJpbGl0eSBvZiB3b3JraW5nIHdpdGggdXMgdG8gYnJpbmcgdGhlaXIgb3duIGhp
Z2ggZmlkZWxpdHlSZWFkc3BlYWtlciBicmFuZCB2b2ljZXMgdG8gTGludXggYXMgYSBUVFMgb3B0
aW9uIHRvIHVzZSB3aXRoIExpbnV4c2NyZWVucmVhZGVycyBpZiB0aGVyZSBpcyBlbm91Z2ggaW50
ZXJlc3QgaW4gdGhlIGNvbW11bml0eSBhbmQgaWYgdGhldmVudHVyZSB3b3VsZCBiZSBjb21tZXJj
aWFsbHkgdmlhYmxlLgo+IFJpZ2h0IG5vdywgd2UgYXJlIG9ubHlzZW5kaW5nIHRoaXMgdG8gdGhl
IEJsaW51eCBsaXN0LCBzbyBwbGVhc2UgZG8gbm90IGZvcndhcmQgaXQsIGFzIHRoaXNpcyBub3Qg
YW4gb2ZmaWNpYWwgc3VydmV5Lgo+IElmIHRoZXJlIGlzIGNvbmZpcm1lZCBpbnRlcmVzdCB3aXRo
aW50aGUgQmxpbnV4IGxpc3QgYXMgYSBiYXNlbGluZSBzYW1wbGUgZ3JvdXAsIHRoZW4gd2Ugd291
bGQgc2VuZCBhbm9mZmljaWFsIHN1cnZleSB3aGljaCB3b3VsZCBiZSByZXZpZXdlZCBieSBSZWFk
c3BlYWtlciBiZWZvcmVoYW5kLGFuZCB3aWRlbHkgZGlzcGVyc2VkIGFtb25nc3QgbXVsdGlwbGUg
YmxpbmQgTGludXgvdGVjaCBncm91cHMgdG8gZ2FnZWludGVyZXN0LCBwcmljaW5nLCBsYW5ndWFn
ZSBwcmVmZXJlbmNlcywgc2NyZWVucmVhZGVyIHByZWZlcmVuY2VzZXRjLgo+IFJpZ2h0IG5vdywg
d2Ugc2ltcGx5IHdhbnQgdG8ga25vdyBpZiBhbnlvbmUgZWxzZSBvbiB0aGlzbGlzdCB3b3VsZCB3
YW50IHRvIGhhdmUgUmVhZHNwZWFrZXIgdm9pY2VzIHRvIHVzZSBhcyBhIFRUUyBvcHRpb24gZm9y
TGludXggc2NyZWVucmVhZGVycyBiZWZvcmUgZW5nYWdpbmcgaW4gYW55IGZ1cnRoZXIgb3V0cmVh
Y2hlZmZvcnRzLgo+IFdlIGZpcnN0IG5lZWQgdG8ga25vdyB0aGF0IHdlIGFyZSBub3QgdGhlIG9u
bHkgb25lcyB3aG90aGluayBpdCB3b3VsZCBiZSB3b3J0aCBpdCB0byBoYXZlIFJlYWRzcGVha2Vy
J3MgaGlnaCBmaWRlbGl0eSB2b2ljZXNvbiBMaW51eC4KPiBJZiB0aGVyZSBpcyBlbm91Z2ggaW50
ZXJlc3QgaW4gdGhpcyBwb3RlbnRpYWwgcHJvamVjdCxpdCB3b3VsZCBsaWtlbHkgYmUgYSBtb2Rl
bCBzaW1pbGFyIHRvIFZveGluLCB3aGVyZSB0aGUgY29uc3VtZXIgcGF5c2EgeWV0LXRvLWJlLWRl
dGVybWluZWQgZmVlIHRvIGhhdmUgdGhlaXIgY2hvaWNlIG9mIFJlYWRzcGVha2VyIHZvaWNlZm9y
IHRoZWlyIExpbnV4IHNjcmVlbnJlYWRlci4KPiBXZSBjYW4gcmVmaW5lIHRob3NlIHBhcnRpY3Vs
YXJkZXRhaWxzIGxhdGVyLgo+IEZvciBub3csIHdlIGp1c3Qgd2FudCB0byBrbm93IGlmIGFueW9u
ZSBvbiB0aGlzQmxpbnV4IGxpc3Qgd291bGQgYmUgaW50ZXJlc3RlZCBpbiBoYXZpbmcgUmVhZHNw
ZWFrZXIgdm9pY2VzIG9uIExpbnV4Zm9yIGEgbW9yZSBuYXR1cmFsIHNvdW5kaW5nIFRUUyBleHBl
cmllbmNlLgo+IElmIHNvLCB0aGVuIHdlIHdvdWxka25vdyB3aGV0aGVyIHRvIGNvbmZpcm0gaW50
ZXJlc3Qgd2l0aCBSZWFkc3BlYWtlciBhbmQgd29yayBvbiBhbm9mZmljaWFsIHN1cnZleSB3aGlj
aCB3b3VsZCBoZWxwIHVzIGRldGVybWluZSBwcmljZSByYW5nZSBhbmQgd2hpY2hsYW5ndWFnZXMg
dG8gZm9jdXMgb24gZXRjLgo+IFNvLCBpbiB0aGlzIGVtYWlsIHdlIGFyZSBpbmNsdWRpbmcgYWRp
cmVjdCBsaW5rIHdoZXJlIHlvdSBjYW4gbGlzdGVuIHRvIGRlbW9zIG9mIFJlYWRzcGVha2VyIHZv
aWNlcyBhbmR3ZSBhc2sgdGhhdCB5b3UgbGV0IHVzIGtub3cgaWYgeW91IHdvdWxkIGJlIGludGVy
ZXN0ZWQgaW4gaGF2aW5nUmVhZHNwZWFrZXIgVFRTIG9uIExpbnV4Lgo+IFBsZWFzZSBhYmlkZSBi
eSBSZWFkc3BlYWtlcidzIHRlcm1zYW5kIGNvbmRpdGlvbnMgd2hpY2ggcHJvaGliaXQgdGhlIHJl
Y29yZGluZyBvZiBzYWlkIGRlbW9zLgo+IEludGhpcyBlbWFpbCB0aGVyZSBpcyBhIGRpcmVjdCBs
aW5rIHRvIFJlYWRzcGVha2VyJ3Mgb2ZmaWNpYWwgZGVtbyBwYWdlb24gdGhlaXIgd2Vic2l0ZSB3
aGljaCBmZWF0dXJlcyBhIHZhcmlldHkgb2Ygdm9pY2VzIHRvIHNhbXBsZS4gSnVzdHNlbGVjdCB3
aGljaCB2b2ljZSB5b3Ugd2FudCB0byBoZWFyIGluIHRoZSBjb21ibyBib3gsIHRoZW4gcHJlc3Mi
bGlzdGVuIi4KPiBUaGlzIGxpbmsgaXMgcHJlZmVyYWJsZSBhcyB5b3UgY2FuIGFjY2Vzc211bHRp
cGxlIHZvaWNlcyB3aGljaCBjYW4gYmUgaW5jbHVkZWQgaW4gYSBMaW51eCBjb21wYXRpYmxlU0RL
Lgo+ICDCoEhvd2V2ZXIsIHlvdSB3aWxsIG5lZWQgdG8gdXNlIEZpcmVmb3ggaW4gR3JhcGhpY2Fs
IHRvYWNjZXNzIGl0LiBJZiB5b3UgaGF2ZSB0aGUgYWJpbGl0eSB0byB1c2UgZ3JhcGhpY2FsIEZp
cmVmb3gsIHBsZWFzZWRvIGFzIHRoaXMgd2lsbCBnaXZlIHlvdSB0aGUgbGFyZ2VzdCB2YXJpZXR5
IG9mIGNob2ljZXMuCj4gV2V1bmRlcnN0YW5kIHRoYXQgc29tZSB1c2VycyBtYXkgYmUgYWNjdXN0
b21lZCB0byBvbmx5IHVzaW5nIENvbnNvbGVicm93c2VycywgYW5kIHNvbWUgbXVsdGkgbWVkaWEg
d2Vic2l0ZXMgdGhhdCB3b3JrIGp1c3QgZmluZSB3aXRoR3JhcGhpY2FsIEZpcmVmb3ggd2lsbCBu
b3QgcmVuZGVyIG9uIEx5bnguCj4gSWYgeW91IGFyZWV4Y2x1c2l2ZWx5IGEgQ29uc29sZSB1c2Vy
IGFuZCBjYW5ub3QgdXNlIEdyYXBoaWNhbCBGaXJlZm94IHRvIGFjY2VzcyB0aGUgbGluayBiZWxv
dyBpbiB0aGlzIGVtYWlsLFJlYWRzcGVha2VyIHNlbnQgdXMgdHdvIG1wMyBmaWxlcywgb25lIHdp
dGggYSBzYW1wbGUgb2YgYSBVUyBFbmdsaXNodm9pY2UsIGFuZCB0aGUgb3RoZXIgd2l0aCBhIHNh
bXBsZSBvZiBhIFVLIEVuZ2xpc2ggdm9pY2UgZm9yIENvbnNvbGV1c2VycyB0byBsaXN0ZW4gdG8g
aWYgdGhleSBjYW5ub3Qgc3dpdGNoIHRvIEdyYXBoaWNhbCBhbmQgdXNlIEZpcmVmb3h0byBhY2Nl
c3MgUmVhZHNwZWFrZXIncyBvZmZpY2lhbCBkZW1vIHBhZ2Ugb24gdGhlaXIgd2Vic2l0ZS4KPgo+
IEl0IGlzIG91cnVuZGVyc3RhbmRpbmcgdGhhdCBtcDMgZmlsZXMgY2Fubm90IGJlIHBvc3RlZCB0
byB0aGlzIG1haWxpbmdsaXN0LiAoSWYgdGhpcyBpcyBpbmNvcnJlY3QsIEkgY2FuIHNlbmQgYSBz
ZWNvbmQgZW1haWwgd2l0aCB0aGUgbXAzIGZpbGVzIGlmIG1wMyBmaWxlcyBhcmUgYWxsb3dlZCBv
biB0aGUgQmxpbnV4IGxpc3QpLiBPdGhlcndpc2UsIGlmIGFueW9uZSBvbiB0aGlzIGxpc3QgaXMg
ZXhjbHVzaXZlbHkgYSBDb25zb2xlIHVzZXIgYW5kIGNhbm5vdGFjY2VzcyB0aGUgbGluayB0byBS
ZWFkc3BlYWtlcidzIGRlbW8gcGFnZSBpbmNsdWRlZCBpbiB0aGlzIG1lc3NhZ2UscGxlYXNlIGZl
ZWwgZnJlZSB0byBlbWFpbCBtZSwgU0wsIGF0IG15IGVtYWlsIGFkZHJlc3Mgd2hpY2ggSSB3aWxs
cG9zdCBhdCB0aGUgYm90dG9tIG9mIHRoaXMgbWVzc2FnZSBhbmQgSSBjYW4gc2VuZCB0aGUgdHdv
IG1wMyBmaWxlc3RvIHlvdS4KPgo+Cj4gSG93ZXZlciwgdGhlIG1wM2ZpbGVzIGFyZSBvbmx5IG9u
ZSBzYW1wbGUgb2YgYSBVUyBFbmdsaXNoIHZvaWNlLCBhbmQgb25lIHNhbXBsZSBvZiBhVUsgRW5n
bGlzaCB2b2ljZS4gVGhleSBhcmUgY3JlYXRlZCBmb3IgQ29uc29sZSB1c2VycyB3aG8gY2Fubm90
YWNjZXNzIFJlYWRzcGVha2VyJ3Mgb2ZmaWNpYWwgZGVtbyBwYWdlIHdoaWNoIGhhcyB0aGUgZnVs
bCB2YXJpZXR5IG9mdm9pY2VzLgo+Cj4gICBFdmVuIGlmIHlvdSBhcmUgYSBncmFwaGljYWwgdXNl
ciwgeW91IG1heSBzdGlsbCB3YW50IHRvIGxpc3RlbiB0b3RoZSB0d28gbXAzIGZpbGVzIGJlY2F1
c2UgZXZlbiB0aG91Z2ggdGhleSBhcmUgb25seSBhIHNhbXBsZSBvZiB0d28gc2VsZWN0IHZvaWNl
cyBhcyBjb21wYXJlZCB0byB0aGUgdmFyaWV0eSBvbiB0aGUgZGVtbyB3ZWIgcGFnZSwgdGhleSBy
ZWFkIGEgdmVyeSBsb25nIHNhbXBsZSBvZiB0ZXh0IGFuZCBpdGNhbiBoZWxwIHlvdSBnZXQgYSBm
ZWVsIGZvciB0aGUgZmxvdy4gU28gYW55b25lIHdobyB3YW50cyB0byBsaXN0ZW50byB0aGUgbXAz
IGZpbGVzLCBqdXN0IGVtYWlsIG1lLgo+Cj4gSWYgeW91IGhhdmUgdGhlYWJpbGl0eSB0byB1c2Ug
R3JhcGhpY2FsIEZpcmVmb3ggb24geW91ciBzZXR1cCwgcGxlYXNlIHVzZSBHcmFwaGljYWx0byBj
bGljayBvbiB0aGUgZGlyZWN0IGxpbmsgdG8gUmVhZHNwZWFrZXIncyBkZW1vIHBhZ2UgaW5jbHVk
ZWQgYmVsb3dpbiB0aGlzIGVtYWlsLCB3aGljaCBvZmZlcnMgdGhlIGZ1bGwgdmFyaWV0eSBvZiB2
b2ljZXMsIG11bHRpcGxlIG9wdGlvbnMgZm9yIFVTIEVuZ2xpc2gsIG11bHRpcGxlIG9wdGlvbnMg
Zm9yIFVLRW5nbGlzaCwgYXMgd2VsbCBhcyBvdGhlciBsYW5ndWFnZXMuIElmIHlvdSB3b3VsZCBs
aWtlIHRvIGhlYXIgbG9uZ2VydGV4dCByZWFkIGluIHR3byBzZWxlY3Qgdm9pY2VzLCBlbWFpbCBt
ZSBmb3IgdGhlIG1wMyBmaWxlcy4KPiBHcmFwaGljYWx1c2VycyBwbGVhc2UgY2xpY2sgdGhpcyBs
aW5rIHRvIFJlYWRzcGVha2VyJ3Mgb2ZmaWNpYWwgZGVtbyB3ZWIgcGFnZSxzZWxlY3QgYW55IHZv
aWNlIGZyb20gdGhlIGNvbWJvYm94IGxpc3QgYW5kIHByZXNzImxpc3RlbiI6Cj4KPiBodHRwczov
L3d3dy5yZWFkc3BlYWtlci5jb20vdGV4dC10by1zcGVlY2gtZGVtby8KPgo+IENvbnNvbGV1c2Vy
cywgaWYgeW91IGNhbm5vdCBhY2Nlc3MgUmVhZHNwZWFrZXIncyBvZmZpY2lhbCBkZW1vIHBhZ2Ug
YW5kd291bGQgbGlrZSB0byBsaXN0ZW4gdG8gdHdvIG1wMyBzYW1wbGVzLCBhbHNvIHRvIGdyYXBo
aWNhbCB1c2VycyB3aG93b3VsZCBqdXN0IGxpa2UgdG8gbGlzdGVuIHRvIHRoZSBtcDMgZmlsZXMg
d2hpY2ggcmVhZCBhIHJhdGhlciBsb25ncGllY2Ugb2YgdGV4dCB3aGVyZSB5b3UgY2FuIHJlYWxs
eSBnZXQgYWNxdWFpbnRlZCB3aXRoIHRoZSBmbG93LCBmZWVsZnJlZSB0byBjb250YWN0IFNMIGF0
Ogo+Cj4KPiBzb2Z0d2FyZS5saWJlcmF0b3JzQHNsbWFpbC5tZQo+Cj4KPgo+IFRoYW5rcyBmb3Ig
eW91ciB0aW1lYW5kIHdlIGxvb2sgZm9yd2FyZCB0byB5b3VyIGZlZWRiYWNrLAo+IFNMIGFuZCBD
aGltZQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

