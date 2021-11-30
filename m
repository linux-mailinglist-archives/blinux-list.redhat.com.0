Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC85463E44
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 19:59:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638298746;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=v8vsOZNl2vUL86j9dSYpqcYpFKnfk5HOMDXFAsz5SL0=;
	b=fLxa20K85a7yQY66BC9EL1skxcaWqOd6QBIDZuVD+ZvdC6sfMf07f/UMjRbLwKGVR879c0
	k52fWuiN2zdLqHkv0t29EB3zrIxab9AIOuKzudNbEur0RVbTI7xuJTCPH2WRhKh2iV1nMc
	pwLJeTLtMiPAkCj8zAYlH2FEaCbZy28=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-425-UdxGgRP4OgGqi8llEeAC0g-1; Tue, 30 Nov 2021 13:59:02 -0500
X-MC-Unique: UdxGgRP4OgGqi8llEeAC0g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8FAA181EE67;
	Tue, 30 Nov 2021 18:58:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8CF4245D64;
	Tue, 30 Nov 2021 18:58:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1D0FE1809C89;
	Tue, 30 Nov 2021 18:58:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUIvewK017253 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 13:57:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 16609492CA4; Tue, 30 Nov 2021 18:57:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 11FDF492CA3
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 18:57:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EACAD8001E9
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 18:57:39 +0000 (UTC)
Received: from sonic306-20.consmr.mail.gq1.yahoo.com
	(sonic306-20.consmr.mail.gq1.yahoo.com [98.137.68.83]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-515-sLYmLm3CMS2Bl__-xT_hLA-1; Tue, 30 Nov 2021 13:57:37 -0500
X-MC-Unique: sLYmLm3CMS2Bl__-xT_hLA-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1638298657; bh=C9w0+gaO+2FHOkEJErhhbjfbv15T+b+lNWsQpkdBZdQ=;
	h=X-Sonic-MF:Date:Subject:To:From:From:Subject;
	b=QnAJhbLBA09Ck49b5OjFA5Bdk4AYMmdvwZiC/LsputV0JGyqkFss9i1tXrFgOwpBxOeAUDIhJI5U0QkQfMCdQKgGvLqliQPMvcG0gxjPVh6GdMwW3uCdX5bEDpcDcGA8hnwHvbNCL3Fydyz9fbzPiNV+wxActHHqi+2VRUAznOE5UwqsKpUaJhm0QBSwRKqavkH/titzj6kAVn/CCm0P+zOJWPPIIMscVUubgEnOrDNA2jNk5wgSUEaiyVTvGkyr63SYta7OPvn6Krb1EAUbLUpu9lquEIBPJb2B9PlGhuinkaK3e09VOn5fQY97JiNuR34wWMfh/U+FB3Xl2FXOsA==
X-YMail-OSG: uKRg.s4VM1mBNo9cdnZsCqIH2zHbnDf4jCVJb9ias7zgZhsumIK26nUN.l.BKW0
	jfjDMHNa9KapdzJ517NU2rFPU.t7szQaLH2k4rrORLc4HIotVV3qpZHvMoewTQ5c4vLdUMaTmVVX
	WF7MmmO3gq6pZ66wQv9GQ12Bf9ILEgmnwYZ5XNIF28RtCGKXXP52ZPIqzwRJa2lsYvpAqOT82lTT
	wVZkN.LOgMKodkDZIuxYiHWIrL.HFGNE6sGmXM0p1hsdKRVF9OWEU6mdiCQzPc5QkpW4eMIh.bCs
	4mbh6qT32IWtnXFaIAbjDAiSep0Nh0xJedkP0C5jzNVgrnRxtQBPmopi_bl9cy2R2C6aaRI.Hp0x
	3aiGu_kGurpA._3btfKk58.IU2mZ0XO.mGzNdxCP3BR60sslXGJvyy2IIo6oSODy2_w2AqtxIaky
	kZJtG1DYISfI4sIeAr2dp4zV2WQfrVe40gzjkjoo_oYSmX_SgUokcN8lr3B76wDWtNgCCi1ZajdE
	2BpMxmJir5iZ895GGlhWv2KlMojO3VQmPg4sJjeemJQyDrMBOFpWSDzC1MhEvTvJCk.V4Es9Wo6r
	a6rdfY.W.5xQJLKTE28.VwNJjiTVsr0NxtvlQFpu2yy1xSF4VzJjt_PREKQvRF5lF56ubD_fPDqD
	GkxukEA17TD.H_tvMDojYV3FesdefZk0rGJybNY_5y3x06g86olIGc7BirLBPW_.gw3HBxUEeo5_
	C8V7UEvhk5o6JwS_Nb_SHHzgBLrakz8qgt3QBDWBBWUWFf8PNh3cAkkbBulhBBNFVOjjLqhjtPwb
	hZK_16uAqS2HizQPIaFKKxeq2KfXrVFhSdjyLxh5EXCkcPOTVM7yKzbHW703vcDspV8LQCt1QCnW
	VimWBoArwbVsm9GFPWVwAFLmim6lTQkjwodnLgx2Zbdk1WV.OK2qTeQwzvG5Mln4ogOFk6rOknbY
	0Q9GFguuLibNQdMRHo8MrvyywKkO40FvH8ozyNLELrOumktqJC2iKjB3vWXZky6e7KaPUBEVDoGp
	kK8crV4dQ0d3_vEil.4seUzAps.uVEjddNmzCKV3TCzh_ZH3pZjbpd0z6CAyNmoqXaSMuDdOhDy3
	9d.h5UOECnXnBwhYzII5jDJYdTW24AtitCejOo6fjdnm.uTTHWuqAY3GRVcKr4h8tLW2atrL1JMm
	BgSdWsxC1Kf8yTHcu4IsfIGG1bjRy_mCA14XQAXm7fHAx7r4AKyzsArMLc7PihbTfCCD0cm.PUVu
	098FB_UZjyjv8pnCeM6XlnEnj7Qqzp1.RsH9BbT7RveKMbbOk9196tinL2jO6Jl055Ca6hGD3TuZ
	KcE4ZmhoX0QZG3dUuQZze8ybNUrmoFG5r7XT61vF2n_.ATqbPqcBy6Zho_WEae3sdQ5kK8IlEjm6
	DxwGW5tvMQmMHhtVHKC2UsN1VzlRkuRW9MczjefaVwHIYiwX7xxC5sOgOZtLTkwa1gk2mtzoyl7z
	W2zw8qsA4IjngqxgLjlTP3QKXQbe6tfWv71TFYe8yqyGRknA47vD9Bz9JNoClfnM0d4a_Vgg1RPZ
	Tzfo0wTZ_7.6I0PRJpti6L2.G7k5EuZzWVx4mza3w15Q0EdlfzUAcCRBsmCrnH18nEApGJB6WLcQ
	PvsR292P7DFMAQs9BawDhhwxIox.UTRVT9ZKa6samdyMBJVknUQ.f7frWrvLJquYaAi1gWNgwkyE
	tAXAul.gAe8TsA6dkFspaeArB8kihOAneBtZnUu62yp8QH.1fuDOl648Ajt7zMu0YNVB70cUG9xx
	RhFQ62s3wQuJyMWLNxcqTirVXQUSi1dM4rbURpmEQWU1WhiiBO5dl41OedwslXadx87mi._2DbiO
	cWJsIoe3CpZnNlYDG793SMLbNTV0ZF7ASy2jJUVluBzjOhkwLthRdXyr2XKysyqeQInpQ0rdcXJO
	imHjYuYRo69dtjp_fdSp.Thwn7_7VhghviUkedxExCIgAEcJW7TvLRbmvfaD7s6Z87Q4X1SuF2Kq
	zVnRnK5RFnO07MQEoLwRavKkkmPUvXuV_vc4AA.vf0d41Qn2viJTRS5gC6N9GTQUVB1S4dvzp3LY
	4bCLev_zD0ADBxMTUBw.2CjMU7bR4LRVvkR.gzhEjM3LdSGIwLPXo3pJGJeN2vgzzAxhojkcmnCi
	yOejNickLZh2Akj9nyre_CL.VScmHwJFtcECeMJg73iBROEawdhtdmPbs6oVljJbSW38YalJEOzf
	7CZg.TnpCGjTv3qlkXchEgelbWlwJn5qzVNn_Zk_2.CXI
X-Sonic-MF: <albert.e.sten_clanton@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic306.consmr.mail.gq1.yahoo.com with HTTP;
	Tue, 30 Nov 2021 18:57:37 +0000
Received: by kubenode548.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID 6199cc457b8fe46817c5ebe0cb7fa986; 
	Tue, 30 Nov 2021 18:57:33 +0000 (UTC)
Message-ID: <bf559c03-d9f2-060d-eb5a-4f2341136b35@verizon.net>
Date: Tue, 30 Nov 2021 13:57:32 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: What is the easiest and most accessible editor?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
	<CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
	<PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<CAO2sX33Ek3Vo++4TGSxSnphQWRorYkz9x8325Ap83pkJwmrLXg@mail.gmail.com>
	<CAO2sX30XbkuP2_AanFY5Am9xiy3X+mhg=Tbrh3pHc273Vq2O=g@mail.gmail.com>
In-Reply-To: <CAO2sX30XbkuP2_AanFY5Am9xiy3X+mhg=Tbrh3pHc273Vq2O=g@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

R3JlZXRpbmdzIQoKCkkgc3RhcnRlZCBvdXQgd2l0aCBFbWFjcyBiYWNrIGluIDIwMDUgb3Igc28s
IGJ1dCB1bnRpbCBsYXRlbHkgaGF2ZSB1c2VkIApWaW0gZXhjbHVzaXZlbHkuwqAgSSdtIG9uY2Ug
YWdhaW4gdHJ5aW5nIHRvIGxlYXJuIEVtYWNzLCBwYXJ0bHkgYmVjYXVzZSAKb2Ygc29tZSBvZiBp
dHMgZXh0cmFzIGFuZCBwYXJ0bHkgYmVjYXVzZSBJJ20gY3VyaW91cyBhYm91dCBob3cgRW1hY3Nw
ZWFrIAppcyB0byB1c2UuCgoKSW4gYW55IGV2ZW50LCBtYXliZSBhbiBFbWFjcyB1c2VyIGNhbiB0
ZWxsIG1lIGhvdyB0byBnZXQgdGhlIHJpZ2h0IGFsdCAKa2V5IHRvIHdvcmsgdGhlIHNhbWUgYXMg
dGhlIGxlZnQgb25lLsKgIEkgZXhwZWN0IHRoYXQgdGhpcyB3b3VsZCBtYWtlIGl0IAplYXNpZXIg
dG8gdXNlIHNvbWUgb2YgdGhlIGtleSBjb21iaW5hdGlvbnMuCgoKVGhhbmtzIGZvciBhbnkgaGVs
cC4KCgpBbAoKCk9uIDExLzMwLzIxIDEzOjQzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+IEluIGFsbCBmYWlybmVzcywgYSBwYWlyIG9mIHNjaXNzb3JzLCBwcm9i
YWJseSB0aGUgbW9zdCBjb21tb24gdG9vbCBmb3IKPiBjdXR0aW5nIHBhcGVyLCBraW5kIG9mIGxv
b2tzIGxpa2UgdGhlIGxldHRlciBYLCBidXQgaG9uZXN0bHkgY3RybCt4Cj4gZm9yIGN1dCBhbmQg
Y3RybCt2IGZvciBwYXN0ZSBtb3N0IGxpa2VseSBjYW1lIGFib3V0IGJlY2F1c2UgY3RybCtDIGlz
Cj4gY29weSBhbmQgeCwgYywgYW5kIHYgYXJlIGFkamFjZW50IG9uIHF3ZXJ0eSBrZXlib2FyZHMg
YW5kIHRoZXJlJ3MgYQo+IGNlcnRhaW4gc2Vuc2UgdG8gcHV0dGluZyByZWxhdGVkIGZ1bmN0aW9u
cyB0b2dldGhlci4uLiBUaGVuIGFnYWluLAo+IGV2ZW4gdGhlIG1uZW1vbmljIGtleXN0cm9rZXMg
cHJvYmFibHkgb25seSB3b3JrIGFzIHN1Y2ggaW4gdGhlCj4gbGFuZ3VhZ2Ugb2YgdGhlIG9uZSB3
aG8gcGlja2VkIHRoZW0gYW5kIG1heWJlIGEgZmV3IGNsb3NlbHkgcmVsYXRlZAo+IGxhbmd1YWdl
cyBpZiB5b3UncmUgbHVja3kuLi4gYW5kIHRoYXQgd2UgZXZlbiBjYWxsIHRoZXNlIGZ1bmN0aW9u
cyBjdXQKPiBhbmQgcGFzdGUgaXMgYXJndWFibHkgYW4gYXJ0aWZhY3Qgb2YgYSBieSBnb25lIGVy
YSwgc2ltaWxhciB0byBob3cKPiBvZnRlbiBHVUlzIHVzZSBmbG9wcHkgZGlzY3MgYXMgdGhlIHNh
dmUgaWNvbiBvciBvbGQtZmFzaGlvbmVkCj4gbWljcm9waG9uZXMgZm9yIHJlY29yZCBpY29ucy4K
Pgo+IEkgd2lsbCBhZG1pdCwgSSBvZnRlbiBmaW5kIG15c2VsZiB0cnlpbmcgdG8gdXNlIG5hbm8n
cyBrZXkgYmluZGluZ3MKPiB3aGVuIHR5cGluZyBzdHVmZiBpbiBGaXJlZm94Li4uIGFuZCBpZiBJ
IGhhZCB0aGUgcHJvZ3JhbW1pbmcgY2hvcHMgdG8KPiB3cml0ZSBteSBvd24gd2ViIGJyb3dzZXIs
IEknZCBwcm9iYWJseSBoYXZlIHRoZSBVbml2ZXJzYWwgR1VJCj4ga2V5YmluZGluZ3MgYXMgdGhl
IGRlZmF1bHQgd2hlbiBlZGl0aW5nIHRleHQgaWYgSSB3YXMgZ29pbmcgdG8gcmVsZWFzZQo+IGl0
LCBidXQgd291bGQgd2FudCB0byBoYXZlIHRoZSBvcHRpb24gdG8gdXNlIG5hbm8ga2V5YmluZGlu
Z3MgaWYgbm90Cj4ganVzdCBlbWJlZCBhIG5hbm8gIndpbmRvdyIgaW4gdGhlIGFjdGl2ZSB0ZXh0
IGJveC4KPgo+IFRob3VnaCwgb24gdGhlIHN1YmplY3Qgb2YgY29tcGFyaW5nIGVtYWNzIHRvIGEg
ZGVza3RvcCBlbnZpcm9ubWVudC4uLgo+IGFuZCBwZXJoYXBzIGl0IGlzIG1vcmUgYWNjdXJhdGUg
dG8gY2FsbCBlbWFjcyBhIFRVSSBERSB0aGFuIGEgdGV4dAo+IGVkaXRvciwgYXMgYSBnZW5lcmFs
IHJ1bGUsIHRob3NlIGFwcGxpY2F0aW9ucyBhbm90aGVyIHVzZXIgbWVudGlvbnMgYXMKPiB0aGlu
Z3MgeW91J2QgZXhwZWN0IGEgZGVza3RvcCBlbnZpcm9ubWVudCB0byBiZSBidW5kbGVkIHdpdGgg
YXJlCj4gY29tcGxldGVseSBvdXQgb2YgdGhlIHdheSB3aGVuIG5vdCBpbiB1c2UsIGNhbiBiZSBp
Z25vcmVkIG9yIHJlbW92ZWQKPiBpZiB5b3UgZG9uJ3QgdXNlIHRoZW0sIGFuZCBjYW4gYmUgcmVw
bGFjZWQgd2l0aCBvdGhlciBhcHBsaWNhdGlvbnMgaWYKPiB5b3Ugc28gY2hvb3NlLiBGcm9tIHRo
ZSBzb3VuZHMgb2YgaXQsIGVtYWNzIGlzIGxlc3MgYSBjYXNlIG9mIGJ1bmRsaW5nCj4gYW4gZWRp
dG9yIHdpdGggb3RoZXIgYXBwbGljYXRpb25zIGFuZCB0aGUgc3VpdGUgaGF2aW5nIGEgdW5pZmll
ZCBsb29rCj4gYW5kIGZlZWwgYW5kIG1vcmUgYSBjYXNlIG9mIG1hc2hpbmcgc2V2ZXJhbCBhcHBs
aWNhdGlvbnMgdG9nZXRoZXIgYW5kCj4gaWYgeW91IGp1c3Qgd2FudCBhIHN0YW5kYWxvbmUgZWRp
dG9yLCB0aGVyZSdzIG5vIHdheSBvZiB1bmluc3RhbGxpbmcKPiB0aGUgb3RoZXIgc3R1ZmYsIHRo
b3VnaCBhZG1pdHRlZGx5LCB0aGF0J3Mgc3BlYWtpbmcgZnJvbSBhbiBvdXRzaWRlcgo+IHBlcnNw
ZWN0aXZlLgo+Cj4gSWYgbm90aGluZyBlbHNlLCBpdCBzb3VuZHMgbGlrZSBlbWFjcyBydW5zIGNv
bnRyYXJ5IHRvIHRoZSAiZG8gb25lCj4gdGhpbmcgYW5kIGRvIGl0IHdlbGwiIGFuZCBtb2R1bGFy
aXR5IGFzcGVjdHMgb2YgdGhlIFVuaXggcGhpbG9zb3BoeS4KPgo+IFRob3VnaCwgdG8gYWRkIGFu
b3RoZXIgdGV4dC1tb2RlIGVkaXRvciB0byB0aGUgcGlsZSwgdGhlcmUncyBhbHNvIGUzLAo+IHdo
bydzIHR3byBtYWluIGFkdmVydGlzZWQgZmVhdHVyZXMgYXJlIHNtYWxsIHNpemUoQXB0aXR1ZGUg
bGlzdHMKPiB1bmNvbXByZXNzZWQgc2l6ZSBhdCA3MksgY29tcGFyZWQgdG8gbmFubydzIDI4MzNr
KSBhbmQgbXVsdGlwbGUKPiBleGVjdXRhYmxlcyB0aGF0IGVhY2ggZHVwbGljYXRlIHRoZSBrZXli
aW5kaW5ncyBvZiBhIGRpZmZlcmVudCB0ZXh0Cj4gZWRpdG9yKGluY2x1ZGluZyBlbWFjcywgdmks
IHBpY28sIGFuZCBuZWRpdCkuCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

