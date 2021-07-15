Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 59E973C9D46
	for <lists+blinux-list@lfdr.de>; Thu, 15 Jul 2021 12:50:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626346226;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HsI3brN2HDJWfIfShD3mxBQ4utfK4bTY6rKJXKfipMs=;
	b=XXGA/9Q2gY3UrbJJYyU+5zFsGGSwKO+REdiZaGtU0xEiZLCAnfCnsWZiiolLWGxIkzPwd/
	iGgGRaMK24QEeV14lupJspyu/EMh22vktzG3spXlFZ48pgpwon0zLU2ndSiaaSTj2996RW
	D18rNgcFUprdddUyEHCdu03LTjSdu3s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-357-SiSV7PSePu-SuEnQqjC1jQ-1; Thu, 15 Jul 2021 06:50:24 -0400
X-MC-Unique: SiSV7PSePu-SuEnQqjC1jQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C2CF6188CA25;
	Thu, 15 Jul 2021 10:50:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D3E965C225;
	Thu, 15 Jul 2021 10:50:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0F13018095C2;
	Thu, 15 Jul 2021 10:50:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16FAo23u015176 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 15 Jul 2021 06:50:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 87D4B208BDDC; Thu, 15 Jul 2021 10:50:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 824CE208BDF1
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 10:50:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E7B61866DF4
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 10:49:59 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
	[209.85.167.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-228-X2JBSxn8PTKpAwnl_DNI_g-1; Thu, 15 Jul 2021 06:49:57 -0400
X-MC-Unique: X2JBSxn8PTKpAwnl_DNI_g-1
Received: by mail-lf1-f53.google.com with SMTP id f30so9111268lfj.1
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 03:49:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=BtgEHgdAESTuV9k7fdXvM6fiZ8D8TubtYH8pOvjtROw=;
	b=mX6Y+fR17AQCAJQuau+tZfQPFyctDPzlVqkTApZu8LCdhAqqMqVnKlP79irqynf0V7
	9M96pYq2MxSipvF178pD3vChX8tyR2e10e/7WrDF/5QyLyU9q45XovMsP9X7fTFMzzN5
	GlxTtAwOlNkvWS42oYz0pWBOk8IUGlQ6wxS2Cpp6BcnTSEIvX947yBmuydr9Bt/2oHxc
	ZLfhm3Qa2qqAcAP5FoRiIuKB2Pq1wxMsgUDXExWV8vAcpQlGryjb8YsvxePyChFAl2Xu
	GbNqxWG1/baEuvp0jd8r+P5NTQdN22yvdbwHGmieDf4CLV8rSDkDuqj/z50Di4KSGziL
	qBeQ==
X-Gm-Message-State: AOAM531tAGTSX2OSXdIx5zW2XQ0gR8IC3kmApt14SIQz/pj8P+xSvNe4
	zn6+ZEjzIGbg7sT8Q2A+qJdUh/uu4mnOKQ==
X-Google-Smtp-Source: ABdhPJz4fq2/OAV6JWT5dzPhhbKSs4sAxm5mgOYUqH5cumqymIWtgFIlMfN3Hj+mAZhPywgKY3E0rg==
X-Received: by 2002:ac2:4e98:: with SMTP id o24mr3011079lfr.604.1626346196131; 
	Thu, 15 Jul 2021 03:49:56 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id k11sm384394lfu.27.2021.07.15.03.49.55
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 15 Jul 2021 03:49:55 -0700 (PDT)
Subject: Re: VScode not accessible?
To: blinux-list@redhat.com
References: <4c94df7a-b105-d608-35eb-ff3c05943866@gmail.com>
Message-ID: <2c4f363c-d7da-0b0f-67d6-d2a588b59994@gmail.com>
Date: Thu, 15 Jul 2021 13:49:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <4c94df7a-b105-d608-35eb-ff3c05943866@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

MTUuMDcuMjAyMSAxMjoyOSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiDQv9C4
0YjQtdGCOgo+IEFzIGl0IHNheXMuLi50cnlpbmcgb3QgZmluZCBhIGdvb2QgY29kZSBlZGl0b3Ig
Zm9yIFJ1Ynkgb24gVWJ1bnR1IDIwLjA0Cj4KPiBTbywgSSBmaWd1cmVkIGFscmlnaHQsIGxldCdz
IGdpdmUgVlNDb2RlIGEgc2hvdC4gTm9wZS4gVGhlIGVkaXRvciBpcyAKPiBjdXJycmVudGx5IGlu
YWNjZXNzaWJsZSBtZXNzYWdlLCBzby4uLi4KPgo+IElzIHRoZXJlIGEgZ29vZCBhbHRlcm5hdGl2
ZSBvciBkaWQgSSBnZXQgdGhlIHdyb25nIHZlcnNpb24gYnkgc25hcCAKPiBpbnN0YWxsaW5nIGl0
Pwo+Cj4KeW91IG5lZWQgdG8gZW5hYmxlIHZzY29kZSBhY2Nlc3NpYmlsaXR5IApodHRwczovL2Nv
ZGUudmlzdWFsc3R1ZGlvLmNvbS9kb2NzL2VkaXRvci9hY2Nlc3NpYmlsaXR5CgotLSAKU2luY2Vy
ZWx5LCBBbGV4YW5kZXIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

