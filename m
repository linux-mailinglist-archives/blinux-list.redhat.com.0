Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 302FB44B122
	for <lists+blinux-list@lfdr.de>; Tue,  9 Nov 2021 17:27:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636475220;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hPc9+y4FD0We9N1Bg3Wxqou5YmplkCK8aC1uWq49Yhs=;
	b=K4p35vM2ipTVR6aSNbUCmEGNsAHl43F70OD+m+Ycggdni+WYQa3BLd8M8ZD4mYvViHvNT0
	pDB9J9CDJhnXwTskyXipttym2IyUVhFjcrRjJBuvHSPY7jBKZPzS3FrubbalAdIYJXXsmx
	uBDOlqRlEoUA+Ll7PIeefc8bLIHy38k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-116-HGGXK8lCNI-6uDZO2QuRug-1; Tue, 09 Nov 2021 11:26:55 -0500
X-MC-Unique: HGGXK8lCNI-6uDZO2QuRug-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2162C15721;
	Tue,  9 Nov 2021 16:26:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC69460C17;
	Tue,  9 Nov 2021 16:26:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 62F4B181A1CF;
	Tue,  9 Nov 2021 16:26:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A9GQJ4l023609 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 9 Nov 2021 11:26:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 705412026D60; Tue,  9 Nov 2021 16:26:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A9632026D48
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 16:26:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7B175181B7A0
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 16:26:16 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-230-ADqTLA4ONASlBzpF3rEw2w-1; Tue, 09 Nov 2021 11:26:14 -0500
X-MC-Unique: ADqTLA4ONASlBzpF3rEw2w-1
Received: by mail-qk1-f180.google.com with SMTP id az8so19264334qkb.2
	for <blinux-list@redhat.com>; Tue, 09 Nov 2021 08:26:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=v3lCdMkmybRDZExtYwei0izA502BjiTMTO4quONLsS0=;
	b=5mRvmv1QT+7QIU9uPJZ2CIdFOfPMdPB2PYpv5c5I4SxNiWHuPsf2A1jxCF5J1IBamN
	Mk5NOub10Dfn+FABq765vn/tSIbJ8s0TdUeouIl+5eAEyP2GZfkzgeabkz4YV++wXnQE
	x+uHSEj6j6LmpfuFffItqqjmO2Q8R+CegtBJAd+rbJC2qmo1GtApyYN/q9EIhTV4StE4
	8/ooFtmRgk+zChH7OoX3jT+4mibwVM1YMh/n39ZhoWKXUnJotEa1OZxnZdn1oSBXI7SX
	dF45bBcaPbcnYzjy3eEAebOIJ7FB04iXfBhhCeDVHWomjorg8EmlQHxoeTCO4kcxhOGL
	xOQQ==
X-Gm-Message-State: AOAM531dfw8JlD3jvawmwKPOwyGTfbVuc7n9h2RWuCxgWEYUedeyzvjx
	Rz4S0s7edxFindhPCI4SnZc8dSL+nXTAaw==
X-Google-Smtp-Source: ABdhPJwzI+3v1EIHf+TrAWcOjKMQCYCMXaL1nVubCVy+pqxXyLqXmHzaaF2x2heKAsKW/d39kpZfBg==
X-Received: by 2002:a05:620a:d93:: with SMTP id
	q19mr6891415qkl.9.1636475173923; 
	Tue, 09 Nov 2021 08:26:13 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::f])
	by smtp.gmail.com with ESMTPSA id
	s127sm10527302qkh.61.2021.11.09.08.26.13 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 09 Nov 2021 08:26:13 -0800 (PST)
Subject: Re: Does any of you use a Whatsapp Linux client?
To: blinux-list@redhat.com
References: <58ade39f-710c-bd82-f316-04decb37569e@gmail.com>
	<f136a39f-8321-0b11-30da-c0999d7f6fa2@slint.fr>
	<d70e4c45-12d3-e4ba-d137-c79d1247f3f5@slint.fr>
Message-ID: <48ab926a-e663-dff8-6680-b37cdfbecef4@gmail.com>
Date: Tue, 9 Nov 2021 11:26:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <d70e4c45-12d3-e4ba-d137-c79d1247f3f5@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzIERpZGllciwKCkkgdHJpZWQgdG8gaW5zdGFsbCB3aXRoIGJvdGggbWV0aG9kcyBidXQg
SSBnb3QgYSBtZXNzYWdlIHRoYXQgcmVhZHM6CgpmYWlsZWQgdG8gb3BlbiBzbGFja2J1aWxkcy1k
YXRhIGZvciByZWFkaW5nLiBVbmFibGUgdG8gZmluZCBhbGwgCnNwZWNpZmllZCBzbGFja2J1aWxk
cy4KCgpNYXkgYmUgSSBuZWVkIHRvIGRvd25sb2FkIHBhY2thZ2VzIGZyb20gc29tZXdoZXJlPyBD
aGVlcnMsCgpJYnJhaGltCgpPbiAxMS85LzIxIDY6MDcgQU0sIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGksIGluIGFkZGl0aW9uOgo+Cj4gZGFuY2Vbfl0kIExB
Tkc9QyBzcGkgd2hhdHNhcHAKPiBBdmFpbGFibGUgcGFja2FnZXM6Cj4gTm9uZQo+Cj4gQXZhaWxh
YmxlIFNsYWNrQnVpbGRzOgo+IHBpZGdpbi13aGF0c2FwcCBbTm90IGluc3RhbGxlZF06IHBpZGdp
bi13aGF0c2FwcCAoV2hhdHNBcHAgUGx1Z2luIGZvciAKPiBQaWRnaW4pCj4gcHVycGxlLWdvd2hh
dHNhcHAgW05vdCBpbnN0YWxsZWRdOiBwdXJwbGUtZ293aGF0c2FwcCAobGlicHVycGxlL1BpZGdp
biAKPiBwbHVnaW4gZm9yIFdoYXRzQXBwIFdlYikKPiBkYW5jZVt+XSQKPgo+IFRvIGJ1aWxkIGFu
ZCBpbnN0YWxsLCBhcyByb290Ogo+IHNsYXB0LXNyYyAtaSBwaWRnaW4td2hhdHNhcHAKPiBvcgo+
IHNsYXB0LXNyYyAtaSBwdXJwbGUtZ293aGF0c2FwcAo+Cj4gQ2F2ZWF0IEkgZGlkbid0IHVzZSB0
aGVzZSBhcHBzLCBub3QgdXNpbmcgV2hhdHNhcHAgc28gbm90IGhhdmluZyBhbiAKPiBhY2NvdW50
Lgo+Cj4gQ2hlZXJzLAo+IERpZGllcgo+Cj4KPiBMZSAwOS8xMS8yMDIxIMOgIDAxOjI4LCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+IEhpIElicmFoaW0s
Cj4+Cj4+IE9mZiB0b3BpYyBidXQgc3RpbGwuLi4KPj4gSSBTbGludCB3ZSBzaGlwOgo+PiBuY1Rl
bGVncmFtIGh0dHBzOi8vZ2l0aHViLmNvbS9OYW5vc2ViL25jVGVsZWdyYW0KPj4gVGVsZWdyYW0g
RGVza3RvcCAoSSBqdXN0IHJlYWxpemVkIHRoYXQgd2UgaGF2ZSB0d28gbWVudSBlbnRyaWVzID8/
PykKPj4gdGVsZWdyYW0tY2xpIGh0dHBzOi8vZ2l0aHViLmNvbS92eXNoZW5nL3RnCj4+IHRlbGVn
cmFtLXB1cnBsZSAocGx1Zy1pbiBmb3IgcGlkZ2luKSAKPj4gaHR0cHM6Ly9naXRodWIuY29tL21h
am4vdGVsZWdyYW0tcHVycGxlIChtYXliZSBzd2l0Y2ggdG8gdGRsaWItcHVycGxlKQo+Pgo+PiBB
bGwgdGhpcyBpbiBhZGRpdGlvbiB0byBUZWxlZ3JhbSBXRUIgYW5kIFRlbGVncmFtIG9uIHlvdXIg
cGhvbmUuCj4+Cj4+IEp1dHMgc2F5aW5nLi4uCj4+Cj4+IENoZWVycywKPj4gRGlkaWVyCj4+Cj4+
IExlIDA4LzExLzIwMjEgw6AgMTk6MzUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gYSDDqWNyaXTCoDoKPj4+IEhlbGxvIGZvbGtzLAo+Pj4KPj4+IEkgYW0gd29uZGVyaW5nIGlm
IGFueSBvZiB5b3UgdXNlIGFuIGFjY2Vzc2libGUgTGludXggY2xpZW50IGZvciAKPj4+IFdoYXRz
YXBwLiBXaGF0IGlzIHRoZSBiZXN0IHdheSBvZiB1c2luZyBXaGF0c2FwcCBvbiBMaW51eCBpZiBu
byAKPj4+IGFjY2Vzc2libGUgY2xpZW50IGlzIGF2YWlsYWJsZT8KPj4+Cj4+PiBBbnkgaWRlYXM/
Cj4+Pgo+Pj4gQ2hlZXJzLAo+Pj4KPj4+IElicmFoaW0KPj4KPj4KPj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

