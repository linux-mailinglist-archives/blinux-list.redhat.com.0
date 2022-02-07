Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F654AB793
	for <lists+blinux-list@lfdr.de>; Mon,  7 Feb 2022 10:40:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644226848;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wVijjHSppvUDvQeJElCuWwXlUReiI4vHEjdojx9dgbQ=;
	b=XH75BaRhDy2hkb6gjIrWX3IG6oji12xOJ9TTvzFW+8fzQNk/J6zVpS4U1UM/xGJN2UWf0R
	mJ3oWFf7JxxgnjppoatTZfk+vINZTyT7rXO15nPUm7ngghC+aDKd/NTVb3VL18y5QfSh9x
	vI5FClF9MaEKYDqDNq3z8lkvn+Dv8wk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-371-W2-v6KtvMUGn2aWWGld1Vg-1; Mon, 07 Feb 2022 04:40:44 -0500
X-MC-Unique: W2-v6KtvMUGn2aWWGld1Vg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0771684B9A5;
	Mon,  7 Feb 2022 09:40:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B317E2A17F;
	Mon,  7 Feb 2022 09:40:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 156014BB7B;
	Mon,  7 Feb 2022 09:40:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 2179e8Xt022731 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 7 Feb 2022 04:40:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D91B440FF696; Mon,  7 Feb 2022 09:40:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D479D40FF690
	for <blinux-list@redhat.com>; Mon,  7 Feb 2022 09:40:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BA37E1C05AAF
	for <blinux-list@redhat.com>; Mon,  7 Feb 2022 09:40:08 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-217-Uo9Q83gIMWmIzUtP3J6xhg-1; Mon, 07 Feb 2022 04:40:06 -0500
X-MC-Unique: Uo9Q83gIMWmIzUtP3J6xhg-1
Received: by mail-qk1-f169.google.com with SMTP id 200so10434666qki.2
	for <blinux-list@redhat.com>; Mon, 07 Feb 2022 01:40:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=sZD5WBETNK+HM7OshtVGo8lTb/5dIjg+vf7OhzOkWaI=;
	b=xB5NuAG/tquYIz6GexQ9wodEHlLswVe6HLGpUsDEKgwNeYi6aBDO2JxP5T/xUcF5Uo
	duQU7wdwW635H6g1/8lV1lzCKXqLt8uUUDPkFrAYaAiKn48Cx6ugp0bst8ZFPuiwdZf5
	Hn0svyJU5V73ehMTVVG7HtBPLC/rrWx6FQWCL4O6Fi/yVSlqn8kk6vSe5h3iVuW6pb5F
	wnaomZRIi2HjpZnyOnMwNnEJ19oPWqk9wyMGirZKSkXITZsOrcMVhDpBwd11W461EGbh
	9F48ROyQA06Tpu06pbmKXpeg053hsJhEHJfscsBARJnrDudWQUkabz3AYdditu4quT2c
	zmDg==
X-Gm-Message-State: AOAM533Bj8DdzZVbMmEYG7YUKpuZU+SvlGyopiTLpQjqS/N7SjgeVkz4
	XVtstezML9HoKOPFgy0EVC6D8vw5eZPYSiAnzG04AqYj
X-Google-Smtp-Source: ABdhPJyzAztOhyQj7YWXiP3EWOzNCTy2bSsEQLYf+/d66YH+kXozNc6VRv897FM0zQ72N6uKAKhrTMPP0WWeLgzf9UQ=
X-Received: by 2002:a05:620a:4551:: with SMTP id
	u17mr5883459qkp.449.1644226806085; 
	Mon, 07 Feb 2022 01:40:06 -0800 (PST)
MIME-Version: 1.0
References: <D1B9D67B-94D0-4A07-9CF8-F86A45643E5E.ref@yahoo.com>
	<D1B9D67B-94D0-4A07-9CF8-F86A45643E5E@yahoo.com>
In-Reply-To: <D1B9D67B-94D0-4A07-9CF8-F86A45643E5E@yahoo.com>
Date: Mon, 7 Feb 2022 11:39:56 +0200
Message-ID: <CAPo=n-_zGW3DhNisU-AuiYJEzqucXQBCRHHcHp5qL5FdL9gbug@mail.gmail.com>
Subject: Re: Does anyone know how to switch a Humanware display to contracted
	braille on Linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rm9yIG1lLCBzd2l0Y2hpbmcgdG8gc2l4IGRvdCBicmFpbGxlIGFsc28gc3dpdGNoZXMgdG8gY29u
dHJhY3RlZCBicmFpbGxlLAphbmQgZWlnaHQgZG90cyBzd2l0Y2hlcyBiYWNrIHRvIGNvbXB1dGVy
IGJyYWlsbGUuIFRoZSBjb21tYW5kcyBhcmUgY29tbWFuZAoyLTMtNSBmb3Igc2l4IGRvdHMsIGFu
ZCBjb21tYW5kIDItMy02IGZvciBlaWdodCBkb3RzLgpOb3RlIGhvd2V2ZXIgdGhhdCBJJ20gdXNp
bmcgdGhlIEJyYWlsbGlhbnQgQkksIHNvIHRoZSBiaW5kaW5ncyBtYXkgZGlmZmVyLgpGb3IgZXhh
bXBsZSwgYSBnIG9uIHRoZSBjb21tYW5kIGtleXMganVtcHMgdG8gdGhlIHByZXZpb3VzIHByb21w
dCwgaXQKZG9lc24ndCB0b2dnbGUgY29udHJhY3RlZCBicmFpbGxlLgoKUmVnYXJkcywKClJ5bmhh
cmR0CgpPbiBTdW4sIDA2IEZlYiAyMDIyLCAxOTo0MyBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uLCA8CmJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgoKPiBIaSBndXlzLAo+
IFN1YmplY3QgcHJldHR5IG11Y2ggc2F5cyBpdCBhbGwuIEkgd2FzICB3b25kZXJpbmcgaWYgYW55
b25lIGtub3dzIGhvdyB0bwo+IHN3aXRjaCBhICBIdW1hbndhcmUgQnJhaWxsaWFudCBiIDgwIHRv
IGNvbnRyYWN0ZWQgIGJyYWlsbGUgb24gdGhlIExpbnV4Cj4gdGVybWluYWw/IEkga25vdyB3aXRo
IHRoZSAgY29tbWFuZCBrZXlzIHlvdSBjYW4gZG8gYSBsZXR0ZXIgRyB3aGljaCAgd2lsbAo+IHRv
Z2dsZSBpdCBpbnRvIGdyYWRlIDIuIEnigJltIGp1c3Qgbm90IHN1cmUgIGhvdyB0byBrZWVwIGl0
IHNldCB0aGF0IHdheS4KPiBBbnkgaGVscCB3b3VsZCBiZSBncmVhdGx5IGFwcHJlY2lhdGVkLgo+
IFRoYW5rIHlvdSwKPgo+IEFzaGxleSBCcmVnZXIKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0

