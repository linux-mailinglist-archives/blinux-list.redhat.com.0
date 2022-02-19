Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 253B14BC965
	for <lists+blinux-list@lfdr.de>; Sat, 19 Feb 2022 17:46:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645289174;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sYbHrV+tQQ0YOkwxfkPtPBo86ZtZJzOePbST3G1bT3A=;
	b=IYCyU0tOeDe6EvP9Y6qjEIb56zBBxIe8QOyqOCnx43cymUazFXICG+6Xcz9C566ZKiHV1I
	ZclMPdasnTGsVZktz08JVelwStxfJOwO/PaarkASRYjn+5j4JaUkHsUfd0EaWGSJ3eze+k
	yCQelrTg94gJ4035fUE0iI8vaVngvWc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-134-Z2vImvrFNS2mv1PlDoO77g-1; Sat, 19 Feb 2022 11:46:10 -0500
X-MC-Unique: Z2vImvrFNS2mv1PlDoO77g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2C61F180FCAC;
	Sat, 19 Feb 2022 16:46:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 533797DE49;
	Sat, 19 Feb 2022 16:46:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4435F1806D03;
	Sat, 19 Feb 2022 16:46:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21JGjukW024116 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 19 Feb 2022 11:45:56 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 741675361D6; Sat, 19 Feb 2022 16:45:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FCB15361CD
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 16:45:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 573E6800B29
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 16:45:56 +0000 (UTC)
Received: from sonic310-14.consmr.mail.bf2.yahoo.com
	(sonic310-14.consmr.mail.bf2.yahoo.com [74.6.135.124]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-590-wcA6KCW5MESou5LhTEeEjw-1; Sat, 19 Feb 2022 11:45:54 -0500
X-MC-Unique: wcA6KCW5MESou5LhTEeEjw-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1645289154; bh=Y+6OvSR7znsSSAn9ovXY1BKDGE/PqfrfFII35wo1YiJ=;
	h=X-Sonic-MF:From:To:Subject:Date:From:Subject;
	b=lj2JCxkVsO0aEMjJv9u1dEkSdExSByP6YYLaMCmEhmlp+OKhJuDlEP6ueE9dhLTYpjbLBHwzPp7ZYIyVUIKdSR3Frpu4RFGhx/u/Wf4nC0ZU5T2kujDA35RfpIyinutNYoTcLwdnF1fxdBAedJuW6nf2bqhgqpSnGopKN1ZnauiYLSDep1RU+5AV4FeXbOgrl6FOM+8Qdlj7dY9oNDpiJeHLTVwoeRlskzdYjcJdkgP+7r//CQ5Mwq14skiBKhU1c9tOKgim3EggpnQze0ujQPlVVUuHgAJ0myLSQV2e3eybsqPMHrYbC3F9rmzuICXdo9CGRFEtdohMfEiQCIlukw==
X-YMail-OSG: N.ND_TMVM1naxZcROrA5Np1qB0JbHktGTPhuuZeeh1_psmQPk5m_cg9CPsExPq_
	YRL.ClEM9l534AZOWsZttP54WAOxlwmBxgD8etDY.H_eQmHIB1cyASFdy6.v.wqEIH93_kKVztRi
	5VMPDW5ZQ15Rj6XSEko_KFI4deZdzmzr7i.58QEnAoWDSGZMsoo13ygjiUGkQCNvnp_rTVTNTJg1
	TWCHQQwx8ZRF.MahxlZfgkz2pQe.8nNKHNmbYO1xLMIqeUx7O7MiAl9PObW.ojnVGolbYvo2BGk9
	bGSpJN4Crzp5w1VefSTvslu3FSODgajn8jj4R.bRwRe1Jp5b1.5VDKcD3xtkn1Yw_Gv._KKlthwO
	DlezQvMpB_l8c_wICYTd9xl6qNtSEiv.KVrHzMbmQm_rIBcKln6fAK2ninwZh3yyeNtU.rfT_Hv_
	N2PT.v7wAaicQykERQiXGevIHl9JnwD3AZjna02AJWDz4QRLkHxOnRB3Lll10PCIwEiIgz9_VYrU
	KufBcfXr1ZuUYO9z0ich.OduDJgvuFNUotSjFswHMgLbPMyNnQEduxWnwPYAA0ZOp7nNERIVK68w
	vpXuXX_jjzjc9V8L10YxPp3WP313obIrwcemIqXySt.dCfITJyZ6INdfvbOPWXDo3eKpNUr2VDXZ
	JSE6_RDcaY4OWSp76ubUpKvhWlcH9wcTnP3EccnKwlrZxYVZBPWQ3LWyqhUKMVTI2abtz.I.SQ4u
	hOFKAIPcRAZeyr3K.iLak5vOpiRyLm05GmKLaW9U8MgsxD0BcHOnoDKi5zKkjCiQ5Y8D5Z2VhoSs
	rZf04AmxjMqj5Xm4UwKjkElXYKOprW2Iy6Zlunb1xmXfwEjH8adTRMA_ThGPgmSHUkB4MV7CUCK.
	LgXQPMOiUJ6cfucMsKuQlFu7Y2hx1M6SdLijgeafGn9qAaRKiZdPaOEBsyADFEGQXPIQFSO92uTl
	VlWG8VvzplOHKuBiXQPhEawqTJYACTVEeErnJoYUMeFjfbo34R2R6vVFWBfbzyCpUEsGnd6rUwDv
	gpGdhZU65JgUiMdVA4HrAhdXuqfrs8tPwRQgRNTgBxYUdYIDSEJqW4SmvadHfrjEHe_K9cTWuAxE
	waLMgAJsicF0rw2kRxhbx5FpjabM7F.yFfIHMpz.il9tfDU1GCT9TwvfCPBJp0gMPLdeZi3TM3ZL
	3QQJYWnRNBvjCxayspUdheO55rzeIoEuDCCh0prdd_f6vgrB_j0UFa.Kqu1oNIHRrtJYYsjwOtvu
	gbVKuKEtVopnPp7MwjL8ItCNZptHCdftqcy4yKKghgkBRpMEGXzULblTEFkRImbzMXBpzqKa5Q8v
	vkPZx3lkKTkKSwcYUGciGi2C7L5rWdld6EQEArDAvnMWFFoIWZbk.xJteA7jKdv_Cq8TjOq9j5qa
	4ZgVSV6ybPZZrzpzsjp4OJW6q4p5Zq4EiUEqEnx1vyiIoa0sjW4JvqSdxC4i44jThsmqDWKfqxju
	7uFhMGtjK0d3FHNLqah5_kJuZzzS4gHNJ0VarcJZ14qiNRdTt5jHg5uGGGBS4l1MnKnG6SggkTYz
	OdcMwuRLYHet23DY0pil6UCZAKkgdFxqxVvzfIgOrOucQ0WXWmEnE2W9u_w04zaxwzo8ayhJOI8C
	iGJkh3wJ7Q_hzM31yqrvbyEsWfMcKjmk71lKWHsss7raQ65c_5lxhlQ_5Az3CYnPUEyKgZw.0L2d
	1zVol5R1k2Rys_8umeBsPbX0k_APxue_jSKX5Niy7MrtHObRvMbB9ewkzIbncBkQtQEKcYlPCcir
	8AzA9FQtySTVYsex1bQnuamJWnl6jrWlN5k9_.amszAsQ.GYhmW2op2yQpe.V9achhwdCdm0arwp
	dpLfoUa4pt9vVBHqzNbSIdn9oLvQ2taACx_l6HG2j0wmr4284m5ODImuM5.KS_yrsFYeP.6alV65
	LA6Wq_0ZvPt3MJ996T5PVlPN3qF34F.gS9tJYwtS_Ofxsxp61BHxwL0droERpFybc7ubNPT9vULP
	9rNa05BPFsmyzI0.EyNJbsoVUyC5CNX_kgBSnIwRmsZNzsbgJxS7qJO.OOWDcSeN0ra0y_ZQwxUV
	CDV5ZtQqf36tXoDhZVGHAsyCk5FlWsRLIWhvbTJksGgBBFDm.UqyB.XrFwzfM1Q--
X-Sonic-MF: <ishechinyoka@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic310.consmr.mail.bf2.yahoo.com with HTTP;
	Sat, 19 Feb 2022 16:45:54 +0000
Received: by kubenode502.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID c3180e3e71b31209c6960c5ff24e8574; 
	Sat, 19 Feb 2022 16:45:48 +0000 (UTC)
References: <8ae2888a-21fb-d362-36b8-0707ed6ae84d@gmail.com>
User-agent: mu4e 1.7.5; emacs 27.2
To: blinux-list@redhat.com
Subject: Re: Cutting out Vim's chattiness...how easy is it?
Date: Sat, 19 Feb 2022 18:43:29 +0200
In-reply-to: <8ae2888a-21fb-d362-36b8-0707ed6ae84d@gmail.com>
Message-ID: <874k4un6us.fsf@yahoo.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21JGjukW024116
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgpDcmVhdGUgYSAudmltcmMgZmlsZSBpbiB5b3VyIGhvbWUgZGlyZWN0b3J5IGFuZCBlbnRl
cgoKOnNldCBub3J1bGVyCgpZb3UgY2FuIGFsc28gc2ltcGx5IGVjaG8gaXQgbGlrZSB0aGlzOgoK
ZWNobyAnOnNldCBub3J1bGVyJyA+PiB+Ly52aW1yYwoKCk9uIFNhdCwgRmViIDE5LCAyMDIyIGF0
IDA0OjIxICBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIAo8YmxpbnV4LWxpc3RA
cmVkaGF0LmNvbT4gd3JvdGU6Cj4gU28gSSd2ZSBnb3QgTXV0dCBzZXQgdXAgd2l0aCB2aW0gYXMg
bXkgZWRpdG9yIG9mIGNob2ljZS4gaXQncyAKPiBub3QKPiBuZWFybHkgYXMgc2NhcnkgYXMgcGVv
cGxlIG1ha2UgaXQgb3V0IHRvIGJlLCBpdCdzIGVhc3kgdG8gZ2V0IAo+IHRoZSBoYW5nCj4gb2Yu
Cj4KPiBCdXQgSSBoYXZlIGEgcXVlc3Rpb24sIGFuZCB1bnN1cmUgaWYgSSBjYW4gZG8gdGhpcyBl
YXNpbHkuIElmIEkgCj4gdHlwZSBhCj4gc2VudGVuY2UsIGFuZCB0aGVuIHN0ZXAgdGhyb3VnaCB3
b3JkcywgSSBnZXQgdGhlIGNoYXJhY3R0ZXIgCj4gbnVtYmVycy4gCj4gTGlrZSB0aGlzIGZvdXIg
aXMgc2l4IGHCoCBzZXZlbiB0ZXN0IDExLCBzbyBob3cgd291bGQgSSByZW1vdmUgCj4gdGhlCj4g
bnVtYmVycyBhZnRlciBpdC4gSXQncyBjb3VudGluZyB0aGUgbnVtYmVyIG9mIGNoYXJhY3RlcnMu
IFdoaWNoIAo+IEknbQo+IG9rYXkgd2l0aC4gQnV0IEkgZG9uJ3Qgd2FudCBpdCBhbm5vdW5jZWQg
YWZ0ZXIgZXZlcnkgc2luZ2xlIHdvcmQKPgo+IElzIHRoZXJlIGEgcXVpY2sgd2F5IHRvIHNvcnQg
dGhpcz8gSWYgSSdtIGdvaW5nIHdvcmQgYnkgd29yZCB0byAKPiByZXZpZXcKPiB3aGF0IEkndmUg
Z290LCBJIHdhbnQgdG8ganVzdCBoZWFyIHRoZSB3b3Jkcywgbm90IGhvdyBtYW55IAo+IGNoYXJh
Y3RlcnMgCj4gc2luY2UgdGhlIHN0YXJ0IG9mIHRoZSBmaWxlCj4KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKLS0gCkdvb2QgcGVvcGxlIGRvIG5vdCBuZWVk
IGxhd3MgdG8gdGVsbCB0aGVtIHRvIGFjdCByZXNwb25zaWJseSwgCndoaWxlIGJhZCBwZW9wbGUg
d2lsbCBmaW5kIGEgd2F5IGFyb3VuZCB0aGUgbGF3cy4KLSBQbGF0byAoNDI3LTM0NyBCLkMuKQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

