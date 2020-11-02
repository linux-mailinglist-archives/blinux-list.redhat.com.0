Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 45A152A22A4
	for <lists+blinux-list@lfdr.de>; Mon,  2 Nov 2020 02:06:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604279167;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ptA9dzZT5+A2sk9WBctrm62oWMf4GloBbLvaM6gP25Y=;
	b=IQ/jDGoZpg+W3aKNgdcw8qNbtTQI7fOfhRM+bvWYzjNTwHScbKUYPdsY71Vy7AgT/hSTka
	SxenJEOBXanXxSa4zuCmBsZ3obrSXBbsBBmZ7mmNZ53J3JWYvqTnmwTc8+hTjDGR2SGYEs
	liXSlWXvzQ5sw1e3ycHGYJyi98fBrqU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-311-6eUdW85mMD-eG_rJNiMVrg-1; Sun, 01 Nov 2020 20:06:05 -0500
X-MC-Unique: 6eUdW85mMD-eG_rJNiMVrg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 41B30107AFD3;
	Mon,  2 Nov 2020 01:06:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB9945B4AF;
	Mon,  2 Nov 2020 01:06:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AB7E58C7A3;
	Mon,  2 Nov 2020 01:05:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A215sOf014006 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Nov 2020 20:05:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CE1CA2166B44; Mon,  2 Nov 2020 01:05:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C921B2166B27
	for <blinux-list@redhat.com>; Mon,  2 Nov 2020 01:05:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 84C06101AA4A
	for <blinux-list@redhat.com>; Mon,  2 Nov 2020 01:05:52 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
	[209.85.218.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-499-bLMSbSZDMFKBGngFKkojmA-1; Sun, 01 Nov 2020 20:05:50 -0500
X-MC-Unique: bLMSbSZDMFKBGngFKkojmA-1
Received: by mail-ej1-f43.google.com with SMTP id za3so16627439ejb.5
	for <blinux-list@redhat.com>; Sun, 01 Nov 2020 17:05:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=pjr/aHeFQJNRR5q7nmKObO6fF+FZhNIDLxd1zPKLlM8=;
	b=SlsxtnWHD3QljWe1K9KU9dCGdqfMw7yhxSm1pJwZsI3i+acOPxc9wyR539IjG7wuD3
	q1nvC23bY+Kly9JL5OczlYNjYM/oq4eRQaMA2ZfjZmWkImWL+AEQzPdhPkTixtFDRD6P
	AA82oaamNw5BQM+7C+qdoVACGcrWvVFJLbXPRvZlJ0p8g/hHBFk4CC14UtQaeFvIW7Vl
	TLHUSozNXq/8e2KjE9gI1RcXQ9BAIIYSuGmXqWRDt0Z5yFqBrt1GAB8dP3GZLZY0DTdu
	ZHc3TE8WAy1+CCebYhQSIbwV9wg7cMy3h+VweAbL+gvR4efSUMYbkXBb/2RUlbDthr3I
	y2lw==
X-Gm-Message-State: AOAM531Jhw/TtrtiAtm8kYGr2PHh1CxHCX5WZqan739ryrgSmunIe3nG
	kssKzdmHvAVRfQtYfaUjWmg5vdSxqDwjFoz1V4g=
X-Google-Smtp-Source: ABdhPJy5O54jD6imLEArg9Yhn6qeX4+HIIYuiVIorDz/89UoXCvnEOCaVsjlYCB21jEn5jdTJvGeNg==
X-Received: by 2002:a17:906:48a:: with SMTP id
	f10mr12847713eja.5.1604279149087; 
	Sun, 01 Nov 2020 17:05:49 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id
	k18sm9369621eds.93.2020.11.01.17.05.48
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 01 Nov 2020 17:05:48 -0800 (PST)
Subject: Re: [orca-list] Arch Linux supports accessibility out of the box.
To: Didier Spaier <didier@slint.fr>
References: <e62bbcf2-d824-36cc-bc52-5b530dda7fe7@gmail.com>
	<d1c64e4a-565d-32ee-abb4-cc9f2a7e151a@slint.fr>
Message-ID: <d6b8ea82-daa7-7069-fdaa-f0ca065842a8@gmail.com>
Date: Mon, 2 Nov 2020 04:05:47 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <d1c64e4a-565d-32ee-abb4-cc9f2a7e151a@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
Cc: Linux for blind general discussion <blinux-list@redhat.com>,
	orca-list@gnome.org
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

dGhhbmtzIERpZGllci4gZmVlbCBmcmVlIHRvIHN1Z2dlc3QgY2hhbmdlcyBhbmQgaW1wcm92ZW1l
bnRzLiBJIGhvcGUgCnRoaXMgd29yawp3aWxsIG5vdyBiZSB1c2VmdWwgbm90IG9ubHkgZm9yIG1l
LCBidXQgZm9yIHRoZSB3aG9sZSBWSSBjb21tdW5pdHkuCgowMi4xMS4yMDIwIDM6NTksIERpZGll
ciBTcGFpZXIg0L/QuNGI0LXRgjoKPiBDb25ncmF0cyBBbGV4YW5kZXIhCj4KPiBOb3cgZG93bmxv
YWRpbmcsIHdpbGwgdHJ5IGl0IGluIGEgVk0gdG9tb3Jyb3cuCj4KPiBDaGVlcnMsIERpZGllcgo+
Cj4gTGUgMDIvMTEvMjAyMCDDoCAwMTo0OSwgQWxleGFuZGVyIEVwYW5lc2huaWtvdiB2aWEgb3Jj
YS1saXN0IGEgw6ljcml0wqA6Cj4+IGhlbGxvIGV2ZXJ5b25lLiBJIGFtIHBsZWFzZWQgdG8gYW5u
b3VuY2UgdGhhdCBzdGFydGluZyBmcm9tIHRoaXMgZGF5LCBhcmNoIExpbnV4Cj4+Cj4+IHN1cHBv
cnRzIGFjY2Vzc2liaWxpdHkgb2ZmaWNpYWxseSBvdXQgb2YgdGhlIGJveC4gWzFdCj4+Cj4+IHlv
dSBjYW4gZG93bmxvYWQgaXNvIGZyb20gb2ZmaWNpYWwgd2Vic2l0ZS4gWzJdIGFsc28gYSBkb2N1
bWVudGF0aW9uIGFib3V0Cj4+IGluc3RhbGxpbmcgd2l0aCBhY2Nlc3NpYmlsaXR5IGlzIHByb3Zp
ZGVkLiBbM10KPj4gWzFdOiBodHRwczovL3d3dy5hcmNobGludXgub3JnL25ld3MvYWNjZXNzaWJs
ZS1pbnN0YWxsYXRpb24tbWVkaXVtLwo+PiBbMl06IGh0dHBzOi8vd3d3LmFyY2hsaW51eC5vcmcv
ZG93bmxvYWQvCj4+IFszXTogaHR0cHM6Ly93aWtpLmFyY2hsaW51eC5vcmcvaW5kZXgucGhwL0lu
c3RhbGxfQXJjaF9MaW51eF93aXRoX2FjY2Vzc2liaWxpdHlfb3B0aW9ucwo+Ci0tIApTaW5jZXJl
bHksIEFsZXhhbmRlci4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

