Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 286D94AFD9B
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 20:40:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644435652;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=873YazbX74on78g3IcyzmuhQaL90KeXvJhaLhF8iCd0=;
	b=gVJ90uaK7URVvafTzH3WHiqcTVLOsczldx2ermCA/Uig8+Sg+v91nYegKqlocw1opNwBnr
	WYAk+GIZ5dGbBldagI5/2ryuW/qAS5mUIEmJQ3BrNE61BeFzGlC4Dm7dYykY8W3Swgw2cI
	VpBsMDz1Zin5I5zcwpFnqbKldRLvlGc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-493-XkNYlmTPPV2S7nOUJYql_w-1; Wed, 09 Feb 2022 14:40:43 -0500
X-MC-Unique: XkNYlmTPPV2S7nOUJYql_w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 793CA83DEA6;
	Wed,  9 Feb 2022 19:40:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EAD345DF21;
	Wed,  9 Feb 2022 19:40:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3734E1809CB8;
	Wed,  9 Feb 2022 19:40:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219JYlrF001721 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 14:34:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 01004401E76; Wed,  9 Feb 2022 19:34:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F10F5401E74
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 19:34:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B84B7380407F
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 19:34:46 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-610-twOPlI5JPtOJtdohI5Uahw-1; Wed, 09 Feb 2022 14:34:45 -0500
X-MC-Unique: twOPlI5JPtOJtdohI5Uahw-1
Received: by mail-wr1-f52.google.com with SMTP id q7so5737058wrc.13
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 11:34:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=5H4UD51tJwSJcffX8JKoPrsrsln7Woi1VVvCAU06tDY=;
	b=gk7oRewsqPqvNHipI9oYEG2QFW+1I3dOITWVnc8a7bB+bKU1oRj82AQNTUI5yfelQH
	45q+LHYP5GVqIxPYKRCcXnlS3iWM7yUYAwut/dimaeKFo4/5X33aqH3UBooFBpsTzFSz
	kDBa2eskGDIMLzpD+lIxY0TlOuX1B5WMGvRX49uIdGREyaNv541u9gUhRvnMLCz8u4Yc
	JGNjSFgLzT4b1c+5Dqc/tRomEvUYt1TGNdtfQ7q28ZMvlide7X4IAoUieGnkcqhwbFWR
	pq+te34lU+6fJlRcCPnC0hyjPlDOyuHkUu/+d8/rARlu8PU/J4tpfRXQa2aw3ph6AL6Q
	LrlA==
X-Gm-Message-State: AOAM53368+yPqRzrvsbGNEzevutc+QlAqGiDMiwmTLqrk45dNPZEH/eF
	+nDGBazpk9/BuRsgdu4PyAJUrihTZo0=
X-Google-Smtp-Source: ABdhPJx/3KbIbtcZQPBFY8lfs/g1NT9Iem1JDFmXY5jUn/8S3MbcQ84la/cHHJ2oFW7QvgSlpJ1xoA==
X-Received: by 2002:a5d:43c4:: with SMTP id v4mr3339078wrr.181.1644435283182; 
	Wed, 09 Feb 2022 11:34:43 -0800 (PST)
Received: from [192.168.1.221] ([90.251.28.150])
	by smtp.gmail.com with ESMTPSA id o3sm9744722wrc.41.2022.02.09.11.34.42
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 09 Feb 2022 11:34:42 -0800 (PST)
Message-ID: <d2064112-b31b-cd4c-89c3-bfb00014c517@gmail.com>
Date: Wed, 9 Feb 2022 19:34:41 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.1
Subject: Re: Has anyone gotten i3 accessible yet? or is there a better option
	besides ratpoison, which is great, btw
To: blinux-list@redhat.com
References: <291bcc92-8153-06b1-5831-937bb8d7f289@gmail.com>
	<da2dd400-8055-3777-60a3-89c1b8a34df5@protonmail.com>
	<CAO2sX30tkfHK=CR5Bz717rOKEYxyw5iXRiqfLW=BiYBtVAXffA@mail.gmail.com>
	<9559c617-742a-eb76-e2b6-f9339fcbefac@panix.com>
In-Reply-To: <9559c617-742a-eb76-e2b6-f9339fcbefac@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSd2ZSBoYWQgc3VjY2VzcyB3aXRoIFN0cnljaG5pbmUgc2V0IHVwIHRvIHN0YXJ0IExYREUgb3Ig
WEZDRSBpbnN0ZWFkIG9mIApSYXRwb2lzb24sIGJ1dCBpMy9TdHVtcHdtL1N3YXkgc2VlbSB0byBu
b3Qgd29yayBuaWNlbHkgd2l0aCBPcmNhLiBUSGUgCm1lbW9yeSB1c2FnZSBmb3IgTFhERS9SYXRw
b2lzb24gc2VlbSwgYXQgbGVhc3QgZm9yIG1lLCBzaW1pbGFyaXNoIGVub3VnaC4KT2theSBMWERF
IGhhcyBpc3N1ZXMgYnV0IGl0IGlzIGxpZ2h0ZXIgdGhhbiBNYXRlLCBMWFFUJ3MgYSBsaXR0bGUg
CmhlYXZpZXIgYW5kIG5lZWRzIGEgYml0IG1vcmUgdHdlYWtpbmcgYW5kIFhGQ0UncyBhbm90aGVy
IG9wdGlvbiwgZXZlbiBpZiAKcGVyc29uYWxseSBJIGRvbid0IGxpa2UgWEZDRSdzIG1lbnUgbGF5
b3V0LgoKU2VlIGlmIEnCoCBjb3VsZCBtaXJvciBSYXRwb2lzb24ncyBqdW1wIHRvIGEgd2luZG93
IHdpdGggbW9kNCtudW1iZXIgCnNldHVwLCBJJ2QgYmUgc2V0LCBvdXQgb2YgdGhlIGJveCB3aXRo
b3V0IGEgdG9uIG9mIGZpZGRsaW5nc2ltaWxhcmlzaCwKCk9uIDIvOS8yMiAxNzowOSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBJIHRoaW5rIHRoZSBzb2x1dGlv
biBpcyB0byBnZXQgeGZjZSBhY2Nlc3NpYmxlIGFuZCBjb21iaW5lZCB3aXRoIHJhdHBvaXNvbgo+
IGFuZCBzdHJ5Y2huaW5lIG9uIHNvbWUgb2YgdGhpcyBvbGQgaGFyZHdhcmUgdGhlcmUgbWlnaHQg
YmUgcm9vbSBmb3Igb3JjYQo+IHRvIHdvcmsgd2VsbC4KPgo+Cj4gT24gV2VkLCA5IEZlYiAyMDIy
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Cj4+IEkgdGhpbmsg
dGhlIHBvaW50IG9mIHdhbnRpbmcgYW4gYWNjZXNzaWJsZSByYXRwb2lzb24sIGkzLCBldGMuIHNl
dHVwCj4+IGlzIHRoYXQgR25vbWUgYW5kIE1hdGUgYXJlIGJvdGggZmFpcmx5IGhlZnR5IGVudmly
b25tZW50cyBpbiB0ZXJtcyBvZgo+PiByZXNvdXJjZSB1c2FnZSwgYW5kIE9yY2EsIGlmIHlvdSds
bCBwYXJkb24gdGhlIHB1biwgaXMgYSB3aGFsZSBvZiBhCj4+IHJlc291cmNlIHVzZXIgaXRzZWxm
IHdoaWxlIHRoZXNlIGFsdGVybmF0aXZlIHdpbmRvdyBtYW5hZ2VycyBhcmUKPj4gZGVzaWduZWQg
dG8gYmUgYXMgbGlnaHR3ZWlnaHQgYXMgdGhlaXIgY3JlYXRvcnMgY291bGQgbWFuYWdlLgo+Pgo+
PiBPbmUgb2YgTGludXgncyBhcHBlYWxzIGlzIGJyZWF0aGluZyBuZXcgbGlmZSBpbnRvIG9sZCBo
YXJkd2FyZSwgYW5kCj4+IHRoZXJlIGFyZSBtYW55IG1hY2hpbmVzIHRoYXQgd291bGQgY2hva2Ug
b24gbW9kZXJuIFdpbmRvd3MgYW5kIGNvdWxkCj4+IGhhbmRsZSBlaXRoZXIgR25vbWUvTWF0ZSBv
ciBPcmNhLCBidXQgY2FuJ3QgaGFuZGxlIGJvdGggR25vbWUvTWF0ZSBhbmQKPj4gT3JjYSBhbmQg
c3RpbGwgaGF2ZSBlbm91Z2ggcmVzb3VyY2VzIGxlZnQgb3ZlciBmb3IgcnVubmluZyBhcHBzIHdp
dGgKPj4gYWNjZXB0YWJsZSBwZXJmb3JtYW5jZS4gQW5kIHNpbmNlIHRoZSBvbmx5IHJlYWwgYWx0
ZXJuYXRpdmUgdG8gT3JjYSBpcwo+PiBkaXRjaCB0aGUgR1VJIGFuZCBkbyBldmVyeXRoaW5nIGlu
IHRoZSBjb25zb2xlLCB0aGUgZm9jdXMgZm9yIHB1dHRpbmcKPj4gYW4gYWNjZXNzaWJsZSBkZXNr
dG9wIG9uIG9sZCBtYWNoaW5lcyB0ZW5kcyB0byBiZSBvbnN0cmlwcGluZyBvdXQKPj4gdW51c2Vk
IHBhcnRzIG9mIHRoZSBkZXNrdG9wIGVudmlyb25tZW50IGFuZCBzd2l0Y2hpbmcgdGhlIHZpdGFs
Cj4+IGNvbXBvbmVudHMgdG8gbGlnaHRlciB3ZWlnaHQgYWx0ZXJuYXRpdmVzLgo+Pgo+PiBBbHNv
LCBhcyBpdHMgbmFtZSBzdWdnZXN0cywgcmF0cG9pc29uIGlzIGJ1aWx0IGZyb20gdGhlIGdyb3Vu
ZCB1cCB3aXRoCj4+IGEga2V5Ym9hcmQtb25seSwgbm8gbW91c2Ugc2V0dXAgaW4gbWluZCwgYW5k
IGJsaW5kIHVzZXJzIHRlbmQgdG8gZmFsbAo+PiBpbnRvIHRoZSBjYXRlZ29yeSBvZiB1c2VycyB3
aG8gZG9uJ3QgbGlrZSB1c2luZyBhIG1vdXNlLgo+Pgo+PiBBbnl3YXlzLCBJIG15c2VsZiBhbSB1
c2luZyB0aGUgZmFzdCwgbGlnaHQgd2luZG93IG1hbmFnZXIoZmx3bSkuLi4gYnV0Cj4+IEkgY2Fu
J3QgcmVhbGx5IHNwZWFrIHRvIGl0cyBhY2Nlc3NpYmlsaXR5IHNpbmNlIG15IHNldHVwIGRvZXNu
J3QKPj4gaW5jbHVkZSBhbnl0aGluZyByZW1vdGVseSByZXNlbWJsaW5nIGEgZnVsbCBkZXNrdG9w
LiBGaXJlZm94IGlzIHRoZQo+PiBvbmx5IGdyYXBoaWNhbCBhcHBsaWNhdGlvbiBJIHVzZSBhbmQg
SSBsYXVuY2ggaXQgdmlhIGEgc2NyaXB0IEkgZGlkCj4+IG5vdCB3cml0ZSBhbmQgdW5kZXJzdGFu
ZCBuZXh0IHRvIG5vdGhpbmcgb2YgaG93IGl0IHdvcmtzIHRoYXQKPj4gYmFzaWNhbGx5IGdpdmVz
IG1lIEZpcmVmb3grb3JjYSBydW5uaW5nIGFzIGEga2lvc2sgb24gdG9wIG9mCj4+IGZsd20odGhv
dWdoLCB3aGlsZSBhIHRydWUga2lvc2sgd291bGQgcHJldmVudCBjbG9zaW5nIEZpcmVmb3gsIG9u
IG15Cj4+IHNldHVwLCBjbG9zaW5nIGZpcmVmb3ggZW5kcyB0aGUgeHNlc3Npb24gYW5kIGRyb3Bz
IGJhY2sgdG8gdGhlCj4+IGNvbnNvbGUuIFRoZSBzY3JpcHQgdXNlcyBjb21waXogYXMgaXRzIGRl
ZmF1bHQgV2luZG93IG1hbmFnZXIsIGJ1dAo+PiBjaGFuZ2luZyB3aGljaCB3aW5kb3cgbWFuYWdl
ciBpdCB1c2VzIGlzIHRoZSBvbmUgdGhpbmcgSSd2ZSBmaWd1cmVkCj4+IG91dCwgYW5kIGZsd20g
d2FzIGp1c3QgdGhlIHNtYWxsZXN0IHdpbmRvdyBtYW5hZ2VyIEkgdHJpZWQgdGhhdCB3b3JrZWQK
Pj4gYXMgYSBkcm9wIGluIHJlcGxhY2VtZW50Li4uIGFuZCBldmVuIHRoZW4sIEZpcmVmb3grT3Jj
YSBhcmUgc3VjaCBhCj4+IEJlaGVtb3RoIGFuZCBMZXZpYXRoYW4gY29tYm8gdGhhdCBzb21lIHdl
YnNpdGVzKG9yIGhhdmluZyBtYW55IHRhYnMKPj4gb3Blbikgc2xvdyBteSA0R0IgUmFtLCBpNyAy
MC1zb21ldGhpbmctaHVuZHJlZCBtYWNoaW5lIHRvIGEgY3Jhd2woTXkKPj4gc3lzdGVtIGRyaXZl
IGJlaW5nIHBsYXR0ZXIgYmFzZWQgcHJvYmFibHkgZG9lc24ndCBoZWxwIG1hdHRlcnMKPj4gZWl0
aGVyKS4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+Pgo+Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

