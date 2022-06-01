Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFFE53ADA4
	for <lists+blinux-list@lfdr.de>; Wed,  1 Jun 2022 22:28:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654115305;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=d80oYqiLZus5OPP93TvOGT1aqLzSvM77EoPF7qxcpbY=;
	b=Vou6YayQSIc51+OTRLZiPRl4xjfJ/x9jZ9HaIU9aguHT8335lo8FC4X4clNMh9cZ45CTeQ
	dFBQIegxJgd9H2ehwAjCdaGhuNml0BsvbAwGWHV5lgrhTHECwaN0lIK573uKZ1n6Dm/0k2
	S3XDI8tx8OGNVQ/9t0mqY3EXmHaT3ag=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-362-Qpz2-9KnOde8QvylOZLqGg-1; Wed, 01 Jun 2022 16:28:22 -0400
X-MC-Unique: Qpz2-9KnOde8QvylOZLqGg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 293693C1E323;
	Wed,  1 Jun 2022 20:28:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C80E51410DDB;
	Wed,  1 Jun 2022 20:28:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 25E4D1947B88;
	Wed,  1 Jun 2022 20:28:17 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Jun 2022 22:28:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: Fwd: How to find my notebook's model number?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <5b3628d3-4350-713b-1944-8e949a584598@slint.fr>
 <mailman.20817.1654111655.111208.blinux-list@redhat.com>
In-Reply-To: <mailman.20817.1654111655.111208.blinux-list@redhat.com>
Message-ID: <mailman.20831.1654115296.111208.blinux-list@redhat.com>
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

SGkgRGlkaWVyLAoKSSBkbywgdGhhbmtzLgoKV2FybSByZWdhcmRzLAoKQnJhbmR0IFN0ZWVua2Ft
cAoKU2VudCB1c2luZyBUaHVuZGVyYmlyZCBmcm9tIHRoZSBTbGludCBsYXB0b3AKCk9uIDIwMjIv
MDYvMDEgMjE6MjcsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4g
SGkgIEJyYW5kdCBhbmQgQWxsLAo+Cj4gc28sIHdpdGggdGhlc2VzIGxpbmVzIG9mIHlvdXIgb3V0
cHV0Ogo+PiAgICAgIHByb2R1Y3Q6IEJPSEItV0FYOSAoQzE3MCkKPj4gICAgICB2ZXJzaW9uOiBN
MTEyMAo+PiAgICAgIHNlcmlhbDogUEFRUE0yMTMxOTAwMDMyOAo+IFlvdSBoYXZlIHRoZSBpbmZv
cm1hdGlvbiB5b3UgbmVlZCwgcmlnaHQ/Cj4KPiBDaGVlcnMsCj4gRGlkaWVyCj4KPiBMZSAwMS8w
Ni8yMDIyIMOgIDE0OjE0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6lj
cml0wqA6Cj4+IEhpIERpZGllciBhbmQgYWxsLAo+Pgo+PiBJIGRpZCB0aGUgZm9sbG93aW5nIGFz
IHN1cGVyIHVzZXI6Cj4+Cj4+ICNsc2h3IC1udW1lcmljfGNhdCA+IGluZm8udHh0Cj4+Cj4+IEhl
cmUgaXMgbXkgb3V0cHV0Lgo+Pgo+PiBicmFuZHQuc2xpbnQubGFwdG9wCj4+ICDCoMKgwqAgZGVz
Y3JpcHRpb246IE5vdGVib29rCj4+ICDCoMKgwqAgcHJvZHVjdDogQk9IQi1XQVg5IChDMTcwKQo+
PiAgwqDCoMKgIHZlbmRvcjogSFVBV0VJCj4+ICDCoMKgwqAgdmVyc2lvbjogTTExMjAKPj4gIMKg
wqDCoCBzZXJpYWw6IFBBUVBNMjEzMTkwMDAzMjgKPj4gIMKgwqDCoCB3aWR0aDogNjQgYml0cwo+
PiAgwqDCoMKgIGNhcGFiaWxpdGllczogc21iaW9zLTMuMi4wIGRtaS0zLjIuMCBzbXAgdnN5c2Nh
bGwzMgo+PiAgwqDCoMKgIGNvbmZpZ3VyYXRpb246IGNoYXNzaXM9bm90ZWJvb2sgZmFtaWx5PU1h
dGVCb29rIEQgc2t1PUMxNzAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

