Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C40F4D5879
	for <lists+blinux-list@lfdr.de>; Fri, 11 Mar 2022 03:57:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646967420;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Q61to3sE+VMsmt19DqouYBEDzyXdjAgtU62SNjTSlyU=;
	b=JT9Uiz5sHWpxBfFEy6X40Odi2Lrlfk3tZjwt4Bd+SpIZ8nuyK09e1mb3O8x8xtGISUqfqy
	RIUCK8O7VuVjh0pQlk5EMbbPpcz0Zq6z5K6K8K+4SuoqtpfsBNOyRd27OET/QzVjCpv/Wz
	WBwOuqc8NM14b5c5BEGeZpzpjDw0x64=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-122-0diMOyFwMkWTwJPtY4_ZiA-1; Thu, 10 Mar 2022 21:56:57 -0500
X-MC-Unique: 0diMOyFwMkWTwJPtY4_ZiA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 700B61C05EBF;
	Fri, 11 Mar 2022 02:56:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9C906141DEE2;
	Fri, 11 Mar 2022 02:56:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0F31F1971669;
	Fri, 11 Mar 2022 02:56:51 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 10 Mar 2022 21:56:43 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: YT-DLP downloading from text file help
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1479.1646963349.111202.blinux-list@redhat.com>
 <mailman.1370.1646964036.111207.blinux-list@redhat.com>
In-Reply-To: <mailman.1370.1646964036.111207.blinux-list@redhat.com>
Message-ID: <mailman.1421.1646967410.111201.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBjb3VsZCBub3QgZ2V0IGl0IHRvIHdvcmsuCgp5dC1kbHAgLWNpdyAteCAtLWF1ZGlvLWZvcm1h
dCBtcDMgLW8gIiUodGl0bGUpcy4lKGV4dClzIC1kb3dubG9hZC50eHQKCgpPbiAzLzEwLzIyIDIx
OjAxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IHl0LWRscCAt
Y2l3IC14IC0tYXVkaW8tZm9ybWF0IG1wMyAtbyAiJSh0aXRsZSlzLiUoZXh0KXMgLWEgbGlzdC50
eHQKPgo+IC0tLS0tIE9yaWdpbmFsIE1lc3NhZ2UgLS0tLS0KPiBGcm9tOiBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPgo+IFRvOiBCbGlu
dXggPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4gRGF0ZTogVGh1LCAxMCBNYXIgMjAyMiAyMDo0
OTowNCAtMDUwMAo+IFN1YmplY3Q6IFlULURMUCBkb3dubG9hZGluZyBmcm9tIHRleHQgZmlsZSBo
ZWxwCj4KPj4gRGVhciBMaXN0LAo+IENhbiBzb21lb25lIGhlbHAgd2l0aCB0aGlzIHNjcmlwdD8K
Pgo+IEkgd2FudCB0byBkb3dubG9hZCB0aGUgYmVzdCBxdWFsaXR5wqAgbXAzIGF1ZGlvIG9mIGxp
bmtzIGluIGEgdGV4dCBmaWxlLgo+Cj4KPiB5dC1kbHAgLS1iYXRjaC1kb3dubG9hZCAtY2l3IC14
IC0tYXVkaW8tZm9ybWF0IG1wMyAtbwo+ICIlKHRpdGxlKXMuJShleHQpcyJkb3dubG9hZC50eHQi
Cj4KPiBUaGFua3MsCj4KPiBSb2IKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

