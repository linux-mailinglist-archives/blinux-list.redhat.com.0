Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 285503CC592
	for <lists+blinux-list@lfdr.de>; Sat, 17 Jul 2021 20:54:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626548083;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qDWzxhBCj5o86Oge1u0LPRXDQG9r22F0btRoXIcWkOk=;
	b=h/Lw+BcBj3a/hXqv7gM9P4MHngu9JfDoCJ18vCvpA1ZKdrpe+AT+ycswIKsKT9U18Qjf4+
	JV9oA7nn9SmFx1CZ1NS5CliVKms+BbYt+bC1AlTS5XHQiNwinPi/yNwTAgYZiFEFMv4GEp
	Wjp2iYoci8rEu+EaaRfAwAbCmjExT7A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-20-n5ndtEHGN_2-bw7dkE0iOA-1; Sat, 17 Jul 2021 14:54:41 -0400
X-MC-Unique: n5ndtEHGN_2-bw7dkE0iOA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8D2AB801107;
	Sat, 17 Jul 2021 18:54:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 24BC060C13;
	Sat, 17 Jul 2021 18:54:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E6E751809C9A;
	Sat, 17 Jul 2021 18:54:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16HIsSSM024445 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Jul 2021 14:54:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0401B11360E6; Sat, 17 Jul 2021 18:54:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F3F8811360E5
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 18:54:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 44AA0185A7A4
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 18:54:24 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-489-qB1_ccgRP8WoX3WE5IaMWw-1; Sat, 17 Jul 2021 14:54:21 -0400
X-MC-Unique: qB1_ccgRP8WoX3WE5IaMWw-1
Received: by mail-qk1-f176.google.com with SMTP id t185so12303744qkd.3
	for <blinux-list@redhat.com>; Sat, 17 Jul 2021 11:54:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=o09KT9Nhjr5x8t3mADr0kFBlYN1R1yZDNb2ESdYY2Ik=;
	b=fYw4K8nlI0mVqrXynI8q2Y6oouzq7iQ5738wQPti9bxH4wIfrC+5pCtkXRnY5Vwzui
	aVo/7YGDKlHakEnFdelutji13v5GSzXyjNs0tUeIS+rG7RqLN72iWHucu76EsxzBCW8N
	UOCcNtn/jHcp4gteiKHhVZzLjK2nKKfIPY+eKdBJisGk/RuA/h4bnnTgiuykPjM94HLQ
	196OeUn7t++sawyM/qGoB6RU63ZnfQiHlGjUaoGruieza/xsqfKgR3OdGn1+3riv4C/z
	1e/6pjaPThQGeYW2LYR/EMuW8Zsa5figJlidnPafgakF/9Yi2+uqBVCzU7tEYOaUONJI
	iE0A==
X-Gm-Message-State: AOAM533AGItkhVMLKM0T9maznYLTnstvZAYC+ROsW28kLQvCm1VrqMuT
	4uAVCnZVL7GrAiXKk93oiVxcHy164y8qh9+yz2u3b+jcSJA=
X-Google-Smtp-Source: ABdhPJzhjblOUdpRjIQJ38Lu3dtMdEZilxg1WZ2HNJ+MD1Ub/YV2MvirF4RRR1SjSB82+u+lTma1NOHI5icX5SbuoZM=
X-Received: by 2002:a05:620a:d42:: with SMTP id
	o2mr16204029qkl.233.1626548060720; 
	Sat, 17 Jul 2021 11:54:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAD_4ddS4g1jpYPKc_35ziy700JXbS+W2P95XYToAyULNeAAmpg@mail.gmail.com>
	<0671f3ab-3695-f330-5261-3f45531a4a9a@slint.fr>
In-Reply-To: <0671f3ab-3695-f330-5261-3f45531a4a9a@slint.fr>
Date: Sat, 17 Jul 2021 20:54:09 +0000
Message-ID: <CAD_4ddR+NxQ5Tjd4c0Kpiwk=2m2bRfBO+Mio2KDswbKmxv_aVQ@mail.gmail.com>
Subject: Re: recommended OCR solutions on Arch Linux
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gdGhlcmUsCgpJIGhhdmUgaW5zdGFsbGVkIGxpb3MtZ2l0LCBidXQgd2hlbiBJIHRyeSBy
dW5uaW5nIGl0IGZyb20gbXkgR1VJLCBpdApkb2Vzbid0LCB3aGlsZSB3aGVuIEkgdHJ5IHJ1bm5p
bmcgaXQgZnJvbSB0ZXJtaW5hbCwgdGhlIGNvbW1hbmQgSSB0cmllZCB3YXMKbGlvcwp0aGlzIGlz
IHRoZSBvdXRwdXQgSSBnZXQsIGFsdGhvdWdoIEkgYW0gc3VyZSBhbGwgdGhlIGRlcHMgYXJlIHNh
dGlzZmllZC4KCltmcmFuY2lzY29AQmx1ZWJsaW5rIH5dJCBsaW9zCi91c3IvbGliL3B5dGhvbjMu
OS9zaXRlLXBhY2thZ2VzL2xpb3MvdWkvZ3RrL3RleHRfdmlldy5weToyMTogUHlHSVdhcm5pbmc6
Ckd0ayB3YXMgaW1wb3J0ZWQgd2l0aG91dCBzcGVjaWZ5aW5nIGEgdmVyc2lvbiBmaXJzdC4gVXNl
CmdpLnJlcXVpcmVfdmVyc2lvbignR3RrJywgJzQuMCcpIGJlZm9yZSBpbXBvcnQgdG8gZW5zdXJl
IHRoYXQgdGhlIHJpZ2h0CnZlcnNpb24gZ2V0cyBsb2FkZWQuCiAgZnJvbSBnaS5yZXBvc2l0b3J5
IGltcG9ydCBHdGsKL3Vzci9saWIvcHl0aG9uMy45L3NpdGUtcGFja2FnZXMvbGlvcy91aS9ndGsv
d2lkZ2V0LnB5OjI0OiBQeUdJV2FybmluZzogQXRrCndhcyBpbXBvcnRlZCB3aXRob3V0IHNwZWNp
ZnlpbmcgYSB2ZXJzaW9uIGZpcnN0LiBVc2UKZ2kucmVxdWlyZV92ZXJzaW9uKCdBdGsnLCAnMS4w
JykgYmVmb3JlIGltcG9ydCB0byBlbnN1cmUgdGhhdCB0aGUgcmlnaHQKdmVyc2lvbiBnZXRzIGxv
YWRlZC4KICBmcm9tIGdpLnJlcG9zaXRvcnkgaW1wb3J0IEF0awpUcmFjZWJhY2sgKG1vc3QgcmVj
ZW50IGNhbGwgbGFzdCk6CiAgRmlsZSAiL3Vzci9iaW4vbGlvcyIsIGxpbmUgMTksIGluIDxtb2R1
bGU+CiAgICBmcm9tIGxpb3MubWFpbiBpbXBvcnQgKgogIEZpbGUgIi91c3IvbGliL3B5dGhvbjMu
OS9zaXRlLXBhY2thZ2VzL2xpb3MvbWFpbi5weSIsIGxpbmUgMjcsIGluCjxtb2R1bGU+ICAgIGZy
b20gbGlvcyBpbXBvcnQgc2Nhbm5lciwgZWRpdG9yLCBpbWFnZXZpZXcsIGNhbSwgb2NyLApwcmVm
ZXJlbmNlcywgc3BlZWNoCiAgRmlsZSAiL3Vzci9saWIvcHl0aG9uMy45L3NpdGUtcGFja2FnZXMv
bGlvcy9lZGl0b3IucHkiLCBsaW5lIDIwLCBpbgo8bW9kdWxlPgogICAgZnJvbSBsaW9zLnVpLmd0
ayBpbXBvcnQgdGV4dF92aWV3LCB0cmVlX3ZpZXcsIHdpZGdldCwgZGlhbG9nLApmaWxlX2Nob29z
ZXIsCmNvbnRhaW5lcnMsIHdpbmRvdwogIEZpbGUgIi91c3IvbGliL3B5dGhvbjMuOS9zaXRlLXBh
Y2thZ2VzL2xpb3MvdWkvZ3RrL3dpZGdldC5weSIsIGxpbmUgMTY2LAppbiA8bW9kdWxlPgogICAg
Y2xhc3MgU2VwYXJhdG9yKEd0ay5IU2VwYXJhdG9yKToKICBGaWxlICIvdXNyL2xpYi9weXRob24z
Ljkvc2l0ZS1wYWNrYWdlcy9naS9vdmVycmlkZXMvX19pbml0X18ucHkiLCBsaW5lCjMyLCBpbiBf
X2dldGF0dHJfXwogICAgcmV0dXJuIGdldGF0dHIoc2VsZi5faW50cm9zcGVjdGlvbl9tb2R1bGUs
IG5hbWUpCiAgRmlsZSAiL3Vzci9saWIvcHl0aG9uMy45L3NpdGUtcGFja2FnZXMvZ2kvbW9kdWxl
LnB5IiwgbGluZSAxMjMsIGluCl9fZ2V0YXR0cl9fCiAgICAgIHJhaXNlIEF0dHJpYnV0ZUVycm9y
KCIlciBvYmplY3QgaGFzIG5vIGF0dHJpYnV0ZSAlciIgJSAoCkF0dHJpYnV0ZUVycm9yOiAnZ2ku
cmVwb3NpdG9yeS5HdGsnIG9iamVjdCBoYXMgbm8gYXR0cmlidXRlICdIU2VwYXJhdG9yJwpbZnJh
bmNpc2NvQEJsdWVibGluayB+XSQKRG9lcyBhbnlvbmUga25vdyB3aGF0IHRoaXMgaXMgYW5kIGhv
dyB0byBmaXggaXQ/ClRoYW5rcyBmb3IgYW55IGFuc3dlci4KQmVzdCByZWdhcmRzLgpGcmFuY2lz
Y28uCgpPbiBTYXQsIEp1bCAxNywgMjAyMSBhdCA2OjM3IFBNIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gPApibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKCj4gaHR0cHM6
Ly9hdXIuYXJjaGxpbnV4Lm9yZy9wYWNrYWdlcy9saW9zLWdpdC8KPgo+IERpZGllcgo+IC0tCj4g
RGlkaWVyIFNwYWllcgo+IFNsaW50IG1haW50YWluZXIKPiBodHRwczovL3NsaW50LmZyCj4gZGlk
aWVyYXRzbGludGRvdGZyCj4KPiBMZSAxNy8wNy8yMDIxIMOgIDIyOjI1LCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0IDoKPiA+IEhlbGxvIGV2ZXJ5b25lLAo+ID4K
PiA+IEkgZG8gbm90IGtub3cgaWYgdGhpcyBxdWVzdGlvbiBoYXMgYmVlbiBhc2tlZCBpbiB0aGUg
cGFzdCwgc28gSSBhbSBzb3JyeQo+IGlmCj4gPiBJIG1pZ2h0IGJlIGJyaW5naW5nIHVwIHNvbWV0
aGluZyB0aGF0IG1pZ2h0IGhhdmUgYWxyZWFkeSBiZWVuIGRpc2N1c3NlZC4KPiA+IE15IHF1ZXN0
aW9uIGlzLCB3aGF0IEdVSSB0ZXNzZXJhY3Qgb3IgY3VuZWlmb3JtIGZyb250IGVuZHMgd291bGQg
eW91Cj4gPiByZWNvbW1lbmQgdG8gYSBmYWlybHkgbmV3IGFyY2ggdXNlciwgd2hvIHdhbnRzIHNv
bWV0aGluZyByZWNvZ25pemVkIGluCj4gPiBkaWZmZXJlbnQgbGFuZ3VhZ2VzLCBhbmQgbmVlZHMg
dGhlIGFiaWxpdHkgdG8gdXNlIGEgc2Nhbm5lcj8KPiA+IFRoYW5rcyBmb3IgYW55IGFuc3dlci4K
PiA+IEJlc3QgcmVnYXJkcy4KPiA+IEZyYW5jaXNjby4KPgo+Cj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

