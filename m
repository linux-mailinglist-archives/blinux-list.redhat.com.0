Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C2A48FE0A
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 17:55:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642352110;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=V8/8Ma5A25hrMv8b3rqWI0emHyHDZoLGgpzrMLZHjRU=;
	b=fr3O7e7u+7WxoRzazxUd4FHYeO4MEQ9RA0Mbqq+G/BSs9GK+MOcPmsOK6givOqjInS5ZMR
	nZ44uWhmlZjhy1DuOGTP8lezGHuDexJaYlODBB7574CSyY3FdVRwYqfen8OXvetfCJcoky
	yjkoTuiX2J8Dgr5fgWIEb3cL0XnNVsk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-634-zTM5F0ZePICxCVtLKFIEjw-1; Sun, 16 Jan 2022 11:55:07 -0500
X-MC-Unique: zTM5F0ZePICxCVtLKFIEjw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6CB658143EA;
	Sun, 16 Jan 2022 16:55:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 15DE279A28;
	Sun, 16 Jan 2022 16:55:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F33CB4BB7C;
	Sun, 16 Jan 2022 16:54:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20GGqb7r000664 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 11:52:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F365146D1ED; Sun, 16 Jan 2022 16:52:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EEDE746D1EB
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 16:52:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D50A828FBBE5
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 16:52:36 +0000 (UTC)
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com
	[209.85.166.179]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-655-ODdgZfUVPoOhOfkkC5qBvw-1; Sun, 16 Jan 2022 11:52:35 -0500
X-MC-Unique: ODdgZfUVPoOhOfkkC5qBvw-1
Received: by mail-il1-f179.google.com with SMTP id e8so12767263ilm.13
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 08:52:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:reply-to:subject:to:references:from:message-id
	:date:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=X+OkOo5uDvi5PQpKiiTlskYXOBRgGyjvOz4bisjeBso=;
	b=VtqlbWBT6hn/DxCiyoOGs90Lz8KcvXaK6shOz0+PeLcoJQTnsH+dW1CasI8qXf9N3h
	HwrSKjcH44XGOMnk+ppgfUedYJJPPAFb4mt/V9CJqtZ1zjUOsXe+jlTta6Ms0jDyiqHD
	5VwRu78yXskenu3PPFlnDGGtvSTDZlyXmigdXMhjLomyegv4WxFtU+fMlY3z2C7Ky43Q
	YF/ue91piTQ3wBrfmGkup4DMtlAvNq9pCtFQNEadj3aaLNUkOv/XrIQ1bkZDgHivT9Z4
	ZzXQxjWen3lmINiATvhD0S0zg0/e7sc7OFi6aC2pgCbNIvKgh4mygnzvlcwdVzFg2gai
	oOOQ==
X-Gm-Message-State: AOAM532ZeUZXNO8OO5oT1JeOE7ccCwbhjne39AsOeSCWW69/J0gLJum9
	VeK0ZYztz5J1KkWEu2jHA0VCJ943MPo=
X-Google-Smtp-Source: ABdhPJwClwsimrTTg7w9nJtR71MAGcZC6rQQWk7KpP0KNb1cW7Zt5KFY13/lreUdwK5/K6/f9V4jVA==
X-Received: by 2002:a05:6e02:1908:: with SMTP id
	w8mr2328611ilu.50.1642351954147; 
	Sun, 16 Jan 2022 08:52:34 -0800 (PST)
Received: from ?IPv6:2600:1700:9434:2a00:5d30:9953:1365:e208?
	([2600:1700:9434:2a00:5d30:9953:1365:e208])
	by smtp.gmail.com with ESMTPSA id
	j18sm5696758ila.86.2022.01.16.08.52.33 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 16 Jan 2022 08:52:33 -0800 (PST)
Subject: Re: Getting Started with linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
	<b6d7e61-4ff9-dc82-a7d4-2f6ee97bf1e1@panix.com>
	<cb6c740b-5aac-6472-9419-ad31e9c25692@gmail.com>
	<CAM+Q2c5qGage2PxM7v420GHTL_RjJZU5mjB7Hq4EZR=oYpCkSw@mail.gmail.com>
Message-ID: <1af50537-791b-78b2-2ecb-e919a3ebcf8b@gmail.com>
Date: Sun, 16 Jan 2022 10:52:33 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAM+Q2c5qGage2PxM7v420GHTL_RjJZU5mjB7Hq4EZR=oYpCkSw@mail.gmail.com>
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

VGhhbmsgeW91LCB3aG9tIGV2ZXIgeW91IGFyZS7CoCBJIGhhdmUgaGVhcmQgb2YgU2xpbnQgYnV0
IG5vdCBtdWNoIGFib3V0IAppdC7CoCBUaGVyZSBhcmUgc28gbWFueSBmbGF2b3JzIG9mIGxpbnV4
IHRoYXQgSSByZWFsbHkgZGlkbid0IGtub3cgd2hlcmUgCnRvIHN0YXJ0LsKgIEknbGwgZ29vZ2xl
IFNsaW50IGFuZCB0cnkgdG8gbGVhcm4gYSBsaXR0bGUgYWJvdXQgaXQuCgpPbiB0aGlzIGxpc3Qs
IHRoZSBhdXRob3Igb2YgYSBtZXNzYWdlIGRvZXMgbm90IHNob3cgdXAgb24gdGhlIG1lc3NhZ2Ug
Cmxpc3Qgbm9yIGluIHRoZSBtZXNzYWdlIGJvZHkuwqAgU28gaWYgb25lIGRvZXMgbm90IHNpZ24g
aGlzL2hlciBtZXNzYWdlLCAKeW91IGRvbid0IGdldCB0byBrbm93IHdobyBpdCBjYW1lIGZyb20u
CgpUaGFuayB5b3UgZm9yIHRoZSBzdWdnZXN0aW9uLgoKSG93YXJkCgpPbiAxLzE2LzIwMjIgOTo0
OCBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBJcyB0aGVy
ZSBhIHJlYXNvbiB3aHkgeW91IGhhdmVuJ3QgdHJpZWQgU2xpbnQsIEhvd2FyZD8gSXQncyBhY2Nl
c3NpYmxlCj4gb3V0LW9mLXRoZS1ib3ggJiBpcyBsaWtlbHkgYSBnb29kIHN0YXJ0aW5nIHBvaW50
IGZvciBhIGJlZ2lubmVyLiAmCj4gaXQncyBkZXZlbG9wZXIgaXMgYSByZWd1bGFyIHBhcnRpY2lw
YW50IG9uIGJsaW5kIExpbnV4IG1haWxpbmcgbGlzdCwKPiBpbmNsdWRpbmcgMSBvZiBoaXMgb3du
LCBJIGJlbGlldmUuCj4KPiBPbiAxLzE2LzIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4gV2VsbCwgaXQgc291bmRz
IGxpa2UgeW91J3JlIHRlbGxpbmcgbWUgdG8gcnVuIGxpbnV4IHVuZGVyIHdpbmRvd3M/IFRoYXQK
Pj4gaXNuJ3Qgd2hhdCBJIGhhZCBpbiBtaW5kLsKgIEhlcmUncyB3aGF0IEkndmUgbGVhcm5lZCB0
aHVzIGZhcjoKPj4gSSBuZWVkIHRvIGRvd25sb2FkIGEgbGludXggT1M7IHRoZW4gbWFrZSBhIGJv
b3RhYmxlIG1lZGlhIGFuZCBpbnN0YWxsCj4+IHRoZSBsaW51eCBJU08gdG8gaXQuCj4+Cj4+IFdl
bGwsIEkgZGlkIHRoYXQ6Cj4+IGRvd25sb2FkZWQgdWJ1bnR1LTIwLjA0LjMtZGVza3RvcC1hbWQ2
NC5pc28KPj4gYW5kIChmb3IgZmxhc2hpbmcgaXQgdG8gdGhlIHRodW1iIGRyaXZlKSBiYWxlbmFF
dGNoZXItUG9ydGFibGUtMS43LjMuZXhlCj4+IG1hZGUgYSBib290YWJsZSB0aHVtYiBkcml2ZSBh
bmQgaW5zdGFsbGVkIHVidW50dSBvbiBpdC4KPj4KPj4KPj4gTm93IEkgbmVlZCB0byBsZWFybiBo
b3cgdG8gaW5zdGFsbCB1YnVudHUgZnJvbSB0aGUgdGh1bWIgZHJpdmUuwqAgSSBtdXN0Cj4+IHNl
YXJjaCBmb3IgaW5zdHJ1Y3Rpb25zIHRvIGdvIG9uIGZyb20gaGVyZS4KPj4KPj4gVGhhbmtzLgo+
PiBIb3dhcmQKPj4KPj4KPj4gT24gMS8xNS8yMDIyIDU6NTMgUE0sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBVYnVudHUgb3IgRmVkb3JhIGNvdWxkIGRvIHRo
YXQgZm9yIHlvdS4gIGFsdC13aW5kb3dzLXMgdG9nZ2xlcyBzcGVlY2ggb24KPj4+IGFuZCBvZmYg
YW5kIHlvdSB3YW50IHRvIGNob29zZSB0cnkgdWJ1bnR1IG9yIHRyeSBmZWRvcmEgYnV0dG9ucyBv
biB0aGUKPj4+IGRlc2t0b3Agc2NyZWVuLiAgRGVza3RvcCBzY3JlZW4gaXMgd2luZG93cy1kIG9u
Y2Ugc3lzdGVtIGJvb3RzIGFuZCB5b3UKPj4+IGhhdmUgc3BlZWNoLgo+Pj4KPj4+Cj4+PiBPbiBT
YXQsIDE1IEphbiAyMDIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+Pj4KPj4+PiBIZWxsbyBhbGwsCj4+Pj4KPj4+PiBJJ3ZlIGJlZW4gd2FudGluZyB0byB0cnkg
b3V0IGxpbnV4IGJ1dCBoYXZlbid0IHdhbnRlZCB0byBnaXZlIHVwIG9yIG1lc3MKPj4+PiB1cAo+
Pj4+IGFueSBvZiBteSB3b3JraW5nIHdpbmRvd3Mgc3lzdGVtcy7CoCBXb3VsZCBpdCBiZSBwb3Nz
aWJsZSB0byBpbnN0YWxsIHNvbWUKPj4+PiB2ZXJzaW9uIG9mIGxpbnV4IG9uIGEgQ0Qgb3IgYSBE
VkQ7IHRoZW4ganVzdCBib290IGEgY29tcHV0ZXIgZnJvbSB0aGF0Cj4+Pj4gZGlzawo+Pj4+IGJ5
cGFzc2luZyB3aW5kb3dzIGFsdG9nZXRoZXI/wqAgSWYgc28sIEknZCBoYXZlIHRvIG1ha2UgaXQg
ZWl0aGVyIHRhbGsgb3IKPj4+PiBkcml2ZQo+Pj4+IGEgQnJhaWxsZSBkaXNwbGF5Lgo+Pj4+Cj4+
Pj4gV29uZGVyIGlmIGFueW9uZSB3b3VsZCBoYXZlIGFueSBzdWdnZXN0aW9ucz/CoCBUaGFuayB5
b3UuCj4+Pj4KPj4+PiBIb3dhcmQKPj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3Q=

