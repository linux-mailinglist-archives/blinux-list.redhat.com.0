Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2F6553E0C57
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 04:12:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628129521;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vmFAXwBwWGF62iyzgJWLTeBGXzbfEKb2xWN4UgzuC6w=;
	b=FXRRtFk8n6SBYcSFXBa11IaFAAMp25o+MI/6VsmwQRcACzQNrU5WzIibZuiTcA+vvx5YDk
	XnU9wQ8t+M+jRk5+yrs/pDoVd3Q4YpUW/u6qcXOcZ1VxAKvUt+bupe9f3PE8uzj1k7hlv1
	9AxsnFJ0w51aNpUuy9HfLN/dzl4xzdA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-403-Zk7L3uqnOC2rf8s-hASr_A-1; Wed, 04 Aug 2021 22:11:59 -0400
X-MC-Unique: Zk7L3uqnOC2rf8s-hASr_A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B28B910066E6;
	Thu,  5 Aug 2021 02:11:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B72F19C46;
	Thu,  5 Aug 2021 02:11:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C98CE4A7C8;
	Thu,  5 Aug 2021 02:11:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1752AW38003435 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 22:10:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 80971200E648; Thu,  5 Aug 2021 02:10:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 786A9200E656
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 02:10:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A2B25101A52C
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 02:10:29 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
	[209.85.222.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-404-RVeMAPeJP5qmih_MySHB_Q-1; Wed, 04 Aug 2021 22:10:27 -0400
X-MC-Unique: RVeMAPeJP5qmih_MySHB_Q-1
Received: by mail-qk1-f177.google.com with SMTP id z24so4831892qkz.7
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 19:10:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=DEL5JK79wYUqAhJBULvgkLcsmXr4hEZqZtIOXcmi0jQ=;
	b=Aos2A/KSlxeMXL+YhgN+1bt/vzWLp6eH/fP37wut1GB2Mm1er3a3s7FtFFLiDxSGMI
	UYNA0EoJWl5tnG4w4hI/g+N+iyr/w5D3Tsci1s1ehubjLM1b2TV7ljgTaSK+V5PqMGCA
	J8YYrf35p5FtMExYhAITFCmURNWCLwXJdvFXayu20jbCLQznUrXPlkMfQ++ceGhStObT
	oYZzkfdP0qjpxc0ysCJ9b6MIYtTlyPs/eo+6kFzvle8JDtaQN7ZgMYEfAW30H6YiREgb
	/rp0YVNYYNoNyErYnkZKVv8lw9ew2pSYkQSBigTx6eaK/WsPIrq7TWFS7vcUOWm2WXmW
	vuHA==
X-Gm-Message-State: AOAM532TNLMX9TskCtFzE7BpX9evEYx7kUhLfGkRDhrdt5JcKUAOCus7
	oFjUEFZKwX54Jl/9uyQF4TgfMF6nttAwZw==
X-Google-Smtp-Source: ABdhPJw7YbZBRxN0/ZS6h1Whu75qu0xxoR/sxCVe2JPbAz1aOZFKArIw5uy6284RalckkLm7ZQOb8Q==
X-Received: by 2002:a05:620a:1593:: with SMTP id
	d19mr2589951qkk.472.1628129427153; 
	Wed, 04 Aug 2021 19:10:27 -0700 (PDT)
Received: from smtpclient.apple ([2601:192:4c80:1420:f9c0:b644:8180:d924])
	by smtp.gmail.com with ESMTPSA id
	g17sm2293167qkk.53.2021.08.04.19.10.26 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 04 Aug 2021 19:10:26 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: Solus DE observations
Date: Wed, 4 Aug 2021 22:10:25 -0400
Message-Id: <50777D22-914C-4419-983C-1EB067198F3E@gmail.com>
References: <B9F8B793-E7C7-445B-91D4-27AE5BE5C394@gmail.com>
In-Reply-To: <B9F8B793-E7C7-445B-91D4-27AE5BE5C394@gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1752AW38003435
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QmVmb3JlIHlvdSB0cnkgdGhhLCB5b3UgbWF5IGhhdmUgdG8gc2V0IHVwIHBvd2VyIGJ1dHRvbiBi
ZWhhdmlvciBpbiBzZXR0aW5ncy4gIFlvdSBjb3VsZCBnZXQgdGhlcmUgYnkgaGl0dGluZyAic3Vw
ZXIiIGFuZCB0eXBpbmcgInBvd2VyIiwgYW5kIGZpbmRpbmcgdGhlIHNldHRpbmdzIHdpdGggeW91
ciBhcnJvd3MgYW5kIHN0dWZmLiAgSSBkaWQgYSBsaXR0bGUgbW9yZSBwbGF5IHdpdGggQnVkZ2ll
LCBvbiB0aGUgbGl2ZSBzeXN0ZW0gYW5kIGZpbmQgdGhhdCB0aGUgJ3J1bicgZGlhbG9nIGlzIGlu
YWNjZXNzaWJsZS4gIE5vdCBhIGJsb2NrZXIsIGJ1dCwgYW4gYW5ub3lpbmcgZGlzY292ZXJ5LgoK
TWF5YmUgSSdsbCB0aHJvdyBCdWRneSBvciBHTk9NRSBvbiB0aGUgcHJvYm9vay4gSSdtIGludGVy
ZXN0ZWQgaW4gd2hldGhlciB0aGUgc3BlZWNoIGNyYWNrbGlucyBnbyBhd2F5LiAgSSB0aGluayB5
b3UgbWVudGlvbmVkIHRoYXQgdGhleSBkb24ndCBzaG93IGluIHlvdXIgaW5zdGFsbGVkIEJ1ZGdp
ZSBzeXN0ZW0/CgpDaGVlcnMsCgpEYXZlIEguCgoKClNlbnQgZnJvbSBteSBpUGhvbmUKCj4gT24g
QXVnIDQsIDIwMjEsIGF0IDk6MDIgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IO+7v0kgd2lsbCB0cnkgdGhh
dC4KPiBJIGhhdmUgYSB0aGluayBwYWQgd2hpY2ggd2FzLCB1bnRpbCBhIGNvdXBsZSBkYXlzIGFn
bywgYSB3aW5kb3dzIHRlbiBtYWNoaW5lLgo+IE5vdyBpdCBpcyBsaW51eC4KPiAKPj4gT24gQXVn
IDQsIDIwMjEsIGF0IDc6MzAgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
PGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+PiAKPj4gWW91IGNvdWxkIGhpdCB0aGUg
cG93ZXItb2ZmIGJ1dHRvbiwgYW5kIGl0IHdpbGwgYXNrIHdoYXQgeW91IHdhbnQgdG8gZG8uCj4+
IAo+PiAKPj4gLS0gIERhdmUgIC0tCj4+IAo+PiAKPj4gCj4+IFNlbnQgZnJvbSBteSBMZW5vdm8g
VGhpbmtwYWQsIHJ1bm5pbmcgU2xpbnQgR05VL0xpbnV4LiAgaHR0cHM6Ly9zbGludC5mciBmb3Ig
aW5mbwo+PiAKPj4+IE9uIDgvNC8yMSA3OjUyIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgo+Pj4gQSB2ZXJ5IGJhc2ljIHF1ZXN0aW9uLCBob3cgbWF5IEkgc2h1
dGRvd24gb3IgcmVzdGFydCBhIGJ1ZGdpZSBzeXN0ZW0/Cj4+IAo+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3Q=

