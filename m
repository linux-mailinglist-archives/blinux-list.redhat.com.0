Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D885D3E8BA3
	for <lists+blinux-list@lfdr.de>; Wed, 11 Aug 2021 10:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628669845;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4rRJETtsf4XYcio0H/JL0w4SP+iKx8Ld20kMWBxrTdM=;
	b=QoqcUx+OvxazsZXI3fTRMP84tblNiojITFqiPfOI5DHAxwGIEsLGRaU2v3XKZeI2pRguFB
	GIU1IF1cMIYOOcFCpf5EswbLj4Rb3S40J3WR8xU+bS7NrSmTIhK5Er1Ou8lp36wo8BpcXZ
	e6br4pZmHbawAFL+z4U24Tes8YeSfcU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-383-hG7SLyvkMR6zumEoncHVrQ-1; Wed, 11 Aug 2021 04:17:24 -0400
X-MC-Unique: hG7SLyvkMR6zumEoncHVrQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 381361932480;
	Wed, 11 Aug 2021 08:17:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1123E84641;
	Wed, 11 Aug 2021 08:17:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 355804A7C8;
	Wed, 11 Aug 2021 08:17:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17B8CxeD014793 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 11 Aug 2021 04:12:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6C6D0205EA88; Wed, 11 Aug 2021 08:12:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 662FD205EB12
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 08:12:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 878778CA942
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 08:12:56 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
	[209.85.218.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-234-kNg7H3_jPmy-RN611W2CNA-1; Wed, 11 Aug 2021 04:12:54 -0400
X-MC-Unique: kNg7H3_jPmy-RN611W2CNA-1
Received: by mail-ej1-f48.google.com with SMTP id go31so2586635ejc.6
	for <Blinux-list@redhat.com>; Wed, 11 Aug 2021 01:12:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=li5PpUNocEInV3NrqkE4T7zgTfU6lGjtO6cpt3MfT2Q=;
	b=hWfNCecBptDPmKZV9aNQu/ZZQW6KvK8OBHXLcx3MRAaUPeROyxgypmRZ7lW6Lppk95
	59kNjr2czhLINNMiHYxegNv1IDvRBZTihH2l3PzJXlaEksDjMgOSQjyAMlasuIEOC5x3
	6kcIs4T4gN78N35s68ar8RKD/wU7u0Wkv35CiFClhHqafhJv3VwlcWeRYufstdwjSbqb
	tsCNOcLws6rygVrnFe65co3Pce5+x7jMuF4aYwXPb/HVnu1kPEv4rWb7Dy2onaFFy3XH
	TBOEGeXuTT5BiG+BjGvJzd6dyMSyPoK5DN4JGorVV5bp1QwET7E9BKCmLy+Seo0dC3RB
	4eOQ==
X-Gm-Message-State: AOAM5336Af4bkyihBbHKDLigabVsw1qA8ALJnRJGoFZbz1HtO6QQhtfU
	v6si8voZbcIXaBVIRe4FLq70FtDI3v8E9Q==
X-Google-Smtp-Source: ABdhPJyF1WJCYdhMyUwoX5viZtlhbLprXm+K77d17PZFAsiYE/TWs9l21uLjRF9wKy7jqDraEsrxbQ==
X-Received: by 2002:a17:906:16cb:: with SMTP id
	t11mr2466459ejd.16.1628669572667; 
	Wed, 11 Aug 2021 01:12:52 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.106.18])
	by smtp.gmail.com with ESMTPSA id
	t15sm7791509ejf.119.2021.08.11.01.12.51 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 11 Aug 2021 01:12:52 -0700 (PDT)
To: Linux for blind general discussion <Blinux-list@redhat.com>
Subject: Solved, setting up a VM using qemu
Message-ID: <2e2e6730-9443-11c5-981a-c23e07cf2abc@gmail.com>
Date: Wed, 11 Aug 2021 10:12:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgYWxsLAoKCkRpZGllciwgZm9yIHNvbWUgcmVhc29uIHlvdXIgc2NyaXB0IGlzIGdpdmluZyBt
ZSBhICJubyBib290YWJsZSBkZXZpY2UiIAplcnJvciwgYnV0IG5lZWRzIG11c3QsIHRodXMsIGhl
cmUgYXJlIHR3byBzY3JpcHRzIGFuZCBpbnN0cnVjdGlvbnMgZm9yIAp1c2UuIEkgd2lsbCBwb3N0
IHRoZSBzY3JpcHRzIGlubGluZS4KCgpGaXJzdCwgY3JlYXRlIGEgZm9sZGVyIGZvciB5b3VyIFZN
LiBJIGRpZDoKCiRta2RpciB+L3FlbXUKCgpUaGVuIGNvcHkgdGhlIFdpbmRvd3MgLmlzbyBpbiB0
byB0aGF0IGZvbGRlciBhbmQgcmVuYW1lIHRvIHdpbmRvcy5pc28gYXMgCmZvbGxvd3MKCgokY2Qg
fi9xZW11CgokY3Agfi9Eb3dubG9hZHMvV2luMTBfMjFIMV9FbmdsaXNoX3g2NC5pc28gd2luZG93
cy5pc28KCgpOb3cgd2UgbWFrZSB0aGUgdmlydHVhbCBkaXNrLCB0aGUgc2NyaXB0IGRvZXNuJ3Qg
ZG8gdGhhdCBmb3IgeW91LgoKI3FlbXUtaW1nIGNyZWF0ZSAtZiBxY293MiB3aW5kb3dzLnFjb3cy
IDEyOEcKCgpNaW5lIGlzIDEyOCBHQiBpbiBzaXplLCBvbmx5IGJlY2F1c2UgSSB1c2UgbXkgV2lu
ZG93cyB0byBtYWtlIGEgbGl2aW5nLgoKCk5vdyB0YWtlIHRoZSBzY3JpcHQgYmVsb3cgYW5kIHNh
dmUgaXQgYXMgJ2luc3RhbGx3aW4uc2gnIGRvIG5vdCBjb3B5IHRoZSAKcXVvdGVzIG9uIHRoZSBi
bGFuayBsaW5lcyBhdCB0aGUgdG9wIGFuZCBib3RvbSwgSSBwdXQgdGhlbSB0aGVyZSB0byAKaW5k
aWNhdGUgdGhlIHNjcmlwdCBjb2RlLgoKCiIKCiMhL2Jpbi96c2gKCmNkIGBkaXJuYW1lICQwYApx
ZW11LXN5c3RlbS14ODZfNjQgLWVuYWJsZS1rdm0gLWNwdSAKaG9zdCxodl9yZWxheGVkLGh2X3Nw
aW5sb2Nrcz0weDFmZmYsaHZfdmFwaWMsaHZfdGltZSAtbSA0RyAtc21wIGNvcmVzPTIgCi1zb3Vu
ZGh3IGhkYSAtZGV2aWNlIGludGVsLWhkYSAtZGV2aWNlIGhkYS1kdXBsZXggLWF1ZGlvZGV2IApw
YSxpZD1wYSxvdXQubWl4aW5nLWVuZ2luZT1vZmYsb3V0LmxhdGVuY3k9MjAwMDAgLWhkYSB3aW5k
b3dzLnFjb3cyIC1uaWMgCnVzZXIsc21iPSIke0hPTUV9LyIgLXVzYmRldmljZSBicmFpbGxlIC1i
b290IGMgLWNkcm9tIHdpbmRvd3MuaXNvIC1ib290IGQKCiIKCgpNYWtlIGl0IGV4ZWN1dGFibGUu
CgojY2htb2QgYSt4IH4vcWVtdS9pbnN0YWxsd2luLnNoCgoKTm93IHlvdSBydW4gaXQgYW5kIGlu
c3RhbGwgV2luZG93cyB0aGUgbm9ybWFsIHdheS4KCgpUbyBhY3R1YWxseSBzdGFydCBXaW5kb3dz
LCB1c2UgdGhlIHNjcmlwdCBiZWxvdy4gTWluZSBpcyBzYXZlZCBhcyAKJ3N0YXJ0d2luLnNoJwoK
CiIKCiMhL2Jpbi96c2gKCmNkIGBkaXJuYW1lICQwYApxZW11LXN5c3RlbS14ODZfNjQgLWVuYWJs
ZS1rdm0gLWNwdSAKaG9zdCxodl9yZWxheGVkLGh2X3NwaW5sb2Nrcz0weDFmZmYsaHZfdmFwaWMs
aHZfdGltZSAtbSA4RyAtc21wIGNvcmVzPTIgCi1zb3VuZGh3IGhkYSAtZGV2aWNlIGludGVsLWhk
YSAtZGV2aWNlIGhkYS1kdXBsZXggLWF1ZGlvZGV2IApwYSxpZD1wYSxvdXQubWl4aW5nLWVuZ2lu
ZT1vZmYsb3V0LmxhdGVuY3k9MjAwMDAgLWhkYSB3aW5kb3dzLnFjb3cyIC1uaWMgCnVzZXIsc21i
PSIke0hPTUV9LyIgLXVzYmRldmljZSBicmFpbGxlIC1ib290IGMKCiIKCgpQbGVhc2Ugbm90ZSwg
dGhpcyBzZXQgb2Ygc2NyaXB0cyB3aWxsIGxldCB5b3UgaW5zdGFsbCBhbmQgcnVuIFdpbmRvd3Mg
aW4gCmJpb3MgYm9vdCwgbm90IGluIEVGSS4KCi0tCiDCoFdhcm0gcmVnYXJkcywKCkJyYW5kdCBT
dGVlbmthbXAKClNlbnQgZnJvbSBteSBnYXNzIHBvd2VyZWQgU2xpbnQgaGFpciBkcnllci4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

