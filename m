Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EAAD947A408
	for <lists+blinux-list@lfdr.de>; Mon, 20 Dec 2021 05:10:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639973434;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2xQyavORNN1G8DHBrGOS34QixDtW1CDM6DOZfcKChlg=;
	b=MqK+YiFk0QOG3PAsfMfVDvWDB7/MuKCazVRY4zblYnK4R6RTtOChsqvw7lDldtwC/JFzrQ
	qP/DVlKGXr1Xjmy/S2L7c7J7sLwna7I0MPQxRbe2F+AXXR0FP+B0s1Rm0DdouQAIqIn2p2
	vx72A5VHXcLxYB9Hm0lohZFCikaahF8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-64-pf6qSd08POOXVsKkIm8BdA-1; Sun, 19 Dec 2021 23:10:30 -0500
X-MC-Unique: pf6qSd08POOXVsKkIm8BdA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5694980BCA8;
	Mon, 20 Dec 2021 04:10:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D61B34737C;
	Mon, 20 Dec 2021 04:10:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 45BED1809CB8;
	Mon, 20 Dec 2021 04:10:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BK49rZT018453 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 19 Dec 2021 23:09:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6B26D400E13B; Mon, 20 Dec 2021 04:09:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 672F7400E11A
	for <blinux-list@redhat.com>; Mon, 20 Dec 2021 04:09:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F8033A81149
	for <blinux-list@redhat.com>; Mon, 20 Dec 2021 04:09:53 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
	[209.85.219.49]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-642-IuTRApE_P6u48Zf0BQoqFA-1; Sun, 19 Dec 2021 23:09:51 -0500
X-MC-Unique: IuTRApE_P6u48Zf0BQoqFA-1
Received: by mail-qv1-f49.google.com with SMTP id fo11so8279183qvb.4
	for <blinux-list@redhat.com>; Sun, 19 Dec 2021 20:09:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=KH8qEF7eCc8O7EdpQAadXbmq5K2jgIhlME28p3S0k34=;
	b=hIbyhU9WwQQihqfuMKSSCnVdQyXCk6wG//Jap4fdegqTxB7L6Ke4HyWBOtnFMG4Ev3
	rCgBgZUiAG4nSFzFJ7oWG/2uF51bEuz3qZrNsa17WYeTDruv7Z65SPjzUvcJj7lE1Q0l
	/pxpy7ZgY1/0waUNOWRtS84EWV0jYS8UurKAhcVwJSWY03xZfVwxFDI2d7LG3NG7yvuD
	a3dsEo4K/xjTw9y0OFLoh5bdQTTdzOZmjpZtKsFmFVMKoP0YgxM4s1rnC5ypuTHlFrY+
	NS1oPPzORHut3FxJQQpBhceJlaRCqiFaKFMxbNiCCqjHee0MmLCSNZ9zCwZaiYePyxXV
	Hv2g==
X-Gm-Message-State: AOAM531/P43Cn1oMoAVFossKHtVZEaaN3DfDDP5VP/0ER9fAfvQvd3uO
	c3rkYZPxCZ2G9nzLTxlx0bWLQUCR/W0=
X-Google-Smtp-Source: ABdhPJxg8ei4ERPs+L/b3TPdWKfi9do82G5lYzOKPAfh/D0DtjnYs1Zg2VmSoWXCHkR5QK00pbIb5g==
X-Received: by 2002:a05:6214:1c8b:: with SMTP id
	ib11mr11523536qvb.64.1639973390388; 
	Sun, 19 Dec 2021 20:09:50 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330:6a07:15ff:fe1b:961c])
	by smtp.gmail.com with ESMTPSA id
	x17sm13686827qta.66.2021.12.19.20.09.49 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 19 Dec 2021 20:09:49 -0800 (PST)
Subject: Re: How can I add Arabic as a recognition language to Lios?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <e9be3d82-77fd-8c95-450b-c763b7f1cdd4@gmail.com>
	<522e1729-0d1b-5c40-c783-894535a5ac54@slint.fr>
Message-ID: <3f7c02c9-c6de-8cc7-6a6d-1157be73d5e2@gmail.com>
Date: Sun, 19 Dec 2021 23:09:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <522e1729-0d1b-5c40-c783-894535a5ac54@slint.fr>
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

VGhhbmtzIERpZGllciwKClVuZm9ydHVuYXRlbHksIEkgdHJpZWQgeW91ciBzdWdnZXN0aW9uIGFu
ZCBzdGlsbCBnb3QgemVybyBhY2N1cmFjeSBvZiAKT0NSIG9mIEFyYWJpYyBsZXR0ZXJzLiBJIHR5
cGVkIGEgUGFyYWdyYXBoIG9mIEFyYWJpYyBhbmQgcHJpbnRlZCBhbmQgCnRoZW4gc2Nhbm5lZCwg
YnV0IHRoZSBvdXRjb21lIHdhcyBnaWJiaXJpc2gsIGFsbCBpbiBsYXRpbiBjaGFyYWN0ZXJzLiBJ
IAp0eXBlZCBhIHBhcmFncmFwaCBpbiBFbmdsaXNoIGFuZCBwcmludGVkIGl0IG91dCwgd2hlbiBJ
IHNjYW5uZWQsIHRoZSBPQ1IgCmFjY3VyYWN5IHdhcyBleGNlbGxlbnQuwqAgU28sIHRoZXIgaXMg
c29tZSBwcm9ibGVtIHdpdGggdGhlIEFyYWJpYyAKcmVjb2duaXRpb24uwqAgSXQgc2VlbXMgdG8g
bWUgdGhhdCBhbHRob3VnaCBBcmFiaWMgaXMgbGlzdGVkLCB0aGUgT0NSIAplbmdpbmUgaXMgbm90
IGFjdHVhbGx5IHRyeWluZyB0byByZWNvZ25pemUgQXJhYmljLgoKQ2hlZXJzLAoKSWJyYWhpbQoK
T24gMTIvMTcvMjEgNjo0OCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPiBIaSBJYnJhaGltLAo+Cj4gWW91IGRvIG5vdCBuZWVkIHRvIGFkZCBhbnl0aGluZyBz
cGVjaWFsLCB0aGUgZmlsZXMKPiAvdXNyL3NoYXJlL3Rlc3NkYXRhL0FyYWJpYy50cmFpbmVkZGF0
YSBiZWluZyBpbmNsdWRlZCBpbiB0aGUgcGFja2FnZQo+IHRlc3NlcmFjdC1kYXRhIGluIFNsaW50
Lgo+Cj4gSnV0cyBvcGVuIGxpb3MsIHRoZW4gaW4gbWVudSBzZWxlY3QgUHJlZmVyZW5jZXMgdGhl
biBQcmVmZXJlbmNlcyByZWNvZ25pdGlvbiBhbmQKPiBzZWxlY3Q6Cj4gRW5naW5lOiBUZXNzZXJh
Y3QKPiBMYW5ndWFnZTogQXJhYmljCj4KPiBJIGRvbid0IGhhdmUgYSBzY2FubmVyIGF0IGhhbmQg
YnV0IGRvd25sb2FkZWQgdGhpcyBmaWxlOgo+IGh0dHBzOi8vZmFkYS5iaXJ6ZWl0LmVkdS9iaXRz
dHJlYW0vMjAuNTAwLjExODg5LzY5MTAvMS9ta2hhbGRpJTIwU2FoYXIlMjBSZXNlYXJjaC5wZGYK
PiB0aGVuIEkgb3BlbmVkIGl0IGluIExpb3MgKG1lbnUgRmlsZSB0aGVuIE9wZW4pLgo+Cj4gVGhl
IGZpbGUgd2FzIHJlY29nbml6ZWQgYW5kIHRoZSB0ZXh0IHByb3Blcmx5IGV4dHJhY3RlZC4KPgo+
IENvcHlpbmcgYSBwYXJhZ3JhcGggb2YgdGhlIGV4dHJhY3RlZCB0ZXh0IGFuZCBwYXN0aW5nIGl0
IGluIHRyYW5zbGF0ZS5nb29nbGUuZnIKPiBhbGxvd2VkIG1lIHRvIHJlYWQgaXQgaW4gRnJlbmNo
IDxzbWlsZT4KPgo+IENoZWVycywKPgo+IERpZGllcgo+Cj4gTGUgMTgvMTIvMjAyMSDDoCAwMDox
MCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+PiBIaSBB
bGwsCj4+Cj4+IFRoaXMgcXVlc3Rpb24gaXMgcHJpbWFyaWx5IHRvIERpZGllcjoKPj4KPj4gSG93
IGNhbiBJIGFkZCBBcmFiaWMgZGljdGlvbmFyeSB0byBMaW9zIHNvIHRoYXQgSSBjYW4gdXNlIG15
IHNjYW5uZXIgdG8gc2Nhbgo+PiBBcmFiaWMgdGV4dD8gSSBhc3N1bWUgSSB3aWxsIGFsc28gYmUg
YWJsZSB0byBydW4gQXJhYmljLnBkZiBmaWxlcyB0aHJvdWdoIExpb3MKPj4gYW5kIGFzIHN1Y2gg
SSB3aWxsIGhhdmUgYWNjZXNzIHRvIGEgbG90IG9mIEFyYWJpYyBib29rcyBhdmFpbGFibGUgb24g
dGhlIG5ldC4KPj4KPj4gQ2hlZXJzLAo+Pgo+PiBJYnJhaGltCj4KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0

