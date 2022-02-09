Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A2B4AFED2
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 22:00:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644440422;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zmHViZ3yd4DMXU3rTSXxX1p/kvZRUqJelkuT3IzAdkk=;
	b=gLxg9zzqCUfp5ItH5eYrUbiuhS9AWTAsFNcA2d8dclELSb1MwtSsinH56xqM9o2s109Sht
	zSxfjpaD63YcLX6Tz7SyegDzOzualp6l87lh1ItnWMfXuCEQG89s8QhZTXjIOe/4yiCpEB
	XRQRuWmFcZ99U6jdW1xI1ydQ5HtrZMM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-222-f0m2s9JDPdW8Ee0_UXED_Q-1; Wed, 09 Feb 2022 16:00:18 -0500
X-MC-Unique: f0m2s9JDPdW8Ee0_UXED_Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0790B760C0;
	Wed,  9 Feb 2022 21:00:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BC0D75DF21;
	Wed,  9 Feb 2022 21:00:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 803504BB7B;
	Wed,  9 Feb 2022 21:00:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219Kxv7P007941 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 15:59:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5AB7B2026609; Wed,  9 Feb 2022 20:59:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 562312026D46
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 20:59:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6E7DF801E8D
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 20:59:52 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-394-PNe96INwOq6w_vuKosXIDg-1; Wed, 09 Feb 2022 15:59:50 -0500
X-MC-Unique: PNe96INwOq6w_vuKosXIDg-1
Received: by mail-qk1-f169.google.com with SMTP id b35so2735641qkp.6
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 12:59:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=MWJq0whyXE7+cqyyuo6aY5xRytH/ns3j3xk8x2Emyvg=;
	b=bgry5Vccr73SmeRZKbdV0FnpV1rXgTfMzlkXeLbATUqJbLJO+gplQM3j7VWtZsJoXl
	drgGHSs+rj9/XZlLlHPfUxiA+rErBsNPdlyIMjcoTUrJFtFJrrowvcxGYI5UD1G0qfh0
	mbBpqG0n2iOWP1Wf914i15/HUtubcZZn3V2qj5IjT0Vt8CHnZ7j2nMBZfUVFDnEpPR1P
	PVhRKTNMuYtb0eLCw/hSx4zO5JAzjAkrgw5AU+gju3U3EotkZHjwN6OJRlewiLLa0WsJ
	dJNlQtkAC1sPKqQDXqXNkvj9Dm1TaBNd/EJkuHYexfzrZ+K6X+3RwEetIL3+T7kWTiUu
	vtdw==
X-Gm-Message-State: AOAM533lN97D12h+Ah0dmdE3XHXli0YkPulDD0RqaYeTwb6v84mTqF6Q
	awRb2ZyRrsqoB5u8NE1hUsLv9570HEky+O/fMMZAGGnV
X-Google-Smtp-Source: ABdhPJzjmijtxxcnGthHABAdiNLKzpmFwOQWpMQ0SthRY5cUgFdiuO3sbDbm1HYLPw8DC7Lpf68FHaaP0uXkTE7Y1hE=
X-Received: by 2002:a05:620a:4245:: with SMTP id
	w5mr2164011qko.469.1644440390106; 
	Wed, 09 Feb 2022 12:59:50 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:518d:0:0:0:0 with HTTP; Wed, 9 Feb 2022 12:59:49
	-0800 (PST)
In-Reply-To: <841ec7a9-39f-cd48-aa60-43b1ffa140d5@home.net>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<95b092c6-91fa-5c95-5ae5-f2418892d8e8@linux-a11y.org>
	<ef4109e0-e0a7-738a-a389-627329b6bac0@linux-a11y.org>
	<65db3283-530f-6961-d077-b43077f69b65@protonmail.com>
	<cbffc970-b88a-29d0-cbef-d8a84077201c@home.net>
	<284dd0af-4885-eff5-af4f-c421565e4772@protonmail.com>
	<841ec7a9-39f-cd48-aa60-43b1ffa140d5@home.net>
Date: Wed, 9 Feb 2022 20:59:49 +0000
Message-ID: <CAO2sX30KLKwmCNEppU59YZQ-nGCVR48gQtHBYQA6ELJ5rQpqDQ@mail.gmail.com>
Subject: Re: Coqui TTS has blew my mind!
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 219Kxv7P007941
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

cGlwMyBpbnN0YWxsIHR0cyBkb2Vzbid0IHNlZW0gdG8gd29yayB3aXRoIFB5dGhvbiAzLjkgZWl0
aGVyOgoKICBlcnJvcjogc3VicHJvY2Vzcy1leGl0ZWQtd2l0aC1lcnJvcgoKICDDlyBHZXR0aW5n
IHJlcXVpcmVtZW50cyB0byBidWlsZCB3aGVlbCBkaWQgbm90IHJ1biBzdWNjZXNzZnVsbHkuCiAg
4pSCIGV4aXQgY29kZTogMQogIOKVsOKUgD4gWzIwIGxpbmVzIG9mIG91dHB1dF0KICAgICAgc2V0
dXAucHk6MTQ6IERlcHJlY2F0aW9uV2FybmluZzogZGlzdHV0aWxzIFZlcnNpb24gY2xhc3NlcyBh
cmUKZGVwcmVjYXRlZC4gVXNlIHBhY2thZ2luZy52ZXJzaW9uIGluc3RlYWQuCiAgICAgICAgaWYg
TG9vc2VWZXJzaW9uKHN5cy52ZXJzaW9uKSA8IExvb3NlVmVyc2lvbigiMy42Iikgb3IKTG9vc2VW
ZXJzaW9uKHN5cy52ZXJzaW9uKSA+IExvb3NlVmVyc2lvbigiMy4xMCIpOgogICAgICBUcmFjZWJh
Y2sgKG1vc3QgcmVjZW50IGNhbGwgbGFzdCk6CiAgICAgICAgRmlsZSAiL3Vzci9saWIvcHl0aG9u
My9kaXN0LXBhY2thZ2VzL3BpcC9fdmVuZG9yL3BlcDUxNy9pbl9wcm9jZXNzL19pbl9wcm9jZXNz
LnB5IiwKbGluZSAzNjMsIGluIDxtb2R1bGU+CiAgICAgICAgICBtYWluKCkKICAgICAgICBGaWxl
ICIvdXNyL2xpYi9weXRob24zL2Rpc3QtcGFja2FnZXMvcGlwL192ZW5kb3IvcGVwNTE3L2luX3By
b2Nlc3MvX2luX3Byb2Nlc3MucHkiLApsaW5lIDM0NSwgaW4gbWFpbgogICAgICAgICAganNvbl9v
dXRbJ3JldHVybl92YWwnXSA9IGhvb2soKipob29rX2lucHV0Wydrd2FyZ3MnXSkKICAgICAgICBG
aWxlICIvdXNyL2xpYi9weXRob24zL2Rpc3QtcGFja2FnZXMvcGlwL192ZW5kb3IvcGVwNTE3L2lu
X3Byb2Nlc3MvX2luX3Byb2Nlc3MucHkiLApsaW5lIDEzMCwgaW4gZ2V0X3JlcXVpcmVzX2Zvcl9i
dWlsZF93aGVlbAogICAgICAgICAgcmV0dXJuIGhvb2soY29uZmlnX3NldHRpbmdzKQogICAgICAg
IEZpbGUgIi90bXAvcGlwLWJ1aWxkLWVudi1lbWl4eTN0OS9vdmVybGF5L2xpYi9weXRob24zLjkv
c2l0ZS1wYWNrYWdlcy9zZXR1cHRvb2xzL2J1aWxkX21ldGEucHkiLApsaW5lIDE2MSwgaW4gZ2V0
X3JlcXVpcmVzX2Zvcl9idWlsZF93aGVlbAogICAgICAgICAgcmV0dXJuIHNlbGYuX2dldF9idWls
ZF9yZXF1aXJlcygKICAgICAgICBGaWxlICIvdG1wL3BpcC1idWlsZC1lbnYtZW1peHkzdDkvb3Zl
cmxheS9saWIvcHl0aG9uMy45L3NpdGUtcGFja2FnZXMvc2V0dXB0b29scy9idWlsZF9tZXRhLnB5
IiwKbGluZSAxNDIsIGluIF9nZXRfYnVpbGRfcmVxdWlyZXMKICAgICAgICAgIHNlbGYucnVuX3Nl
dHVwKCkKICAgICAgICBGaWxlICIvdG1wL3BpcC1idWlsZC1lbnYtZW1peHkzdDkvb3ZlcmxheS9s
aWIvcHl0aG9uMy45L3NpdGUtcGFja2FnZXMvc2V0dXB0b29scy9idWlsZF9tZXRhLnB5IiwKbGlu
ZSAyNjYsIGluIHJ1bl9zZXR1cAogICAgICAgICAgc3VwZXIoX0J1aWxkTWV0YUxlZ2FjeUJhY2tl
bmQsCiAgICAgICAgRmlsZSAiL3RtcC9waXAtYnVpbGQtZW52LWVtaXh5M3Q5L292ZXJsYXkvbGli
L3B5dGhvbjMuOS9zaXRlLXBhY2thZ2VzL3NldHVwdG9vbHMvYnVpbGRfbWV0YS5weSIsCmxpbmUg
MTU3LCBpbiBydW5fc2V0dXAKICAgICAgICAgIGV4ZWMoY29tcGlsZShjb2RlLCBfX2ZpbGVfXywg
J2V4ZWMnKSwgbG9jYWxzKCkpCiAgICAgICAgRmlsZSAic2V0dXAucHkiLCBsaW5lIDQzLCBpbiA8
bW9kdWxlPgogICAgICAgICAgcmVxdWlyZW1lbnRzID0gb3Blbihvcy5wYXRoLmpvaW4oY3dkLCAi
cmVxdWlyZW1lbnRzLnR4dCIpLAoiciIpLnJlYWRsaW5lcygpCiAgICAgIEZpbGVOb3RGb3VuZEVy
cm9yOiBbRXJybm8gMl0gTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeToKJy90bXAvcGlwLWluc3Rh
bGwtbTIxNXd2aHAvdHRzXzIzNmJjNDJiNGIyNTRkNTBhYzIyZmRlNDUzZTRmZmNhL3JlcXVpcmVt
ZW50cy50eHQnCiAgICAgIFtlbmQgb2Ygb3V0cHV0XQoKICBub3RlOiBUaGlzIGVycm9yIG9yaWdp
bmF0ZXMgZnJvbSBhIHN1YnByb2Nlc3MsIGFuZCBpcyBsaWtlbHkgbm90IGEKcHJvYmxlbSB3aXRo
IHBpcC4KZXJyb3I6IHN1YnByb2Nlc3MtZXhpdGVkLXdpdGgtZXJyb3IKCsOXIEdldHRpbmcgcmVx
dWlyZW1lbnRzIHRvIGJ1aWxkIHdoZWVsIGRpZCBub3QgcnVuIHN1Y2Nlc3NmdWxseS4K4pSCIGV4
aXQgY29kZTogMQrilbDilIA+IFNlZSBhYm92ZSBmb3Igb3V0cHV0LgoKbm90ZTogVGhpcyBlcnJv
ciBvcmlnaW5hdGVzIGZyb20gYSBzdWJwcm9jZXNzLCBhbmQgaXMgbGlrZWx5IG5vdCBhCnByb2Js
ZW0gd2l0aCBwaXAuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

