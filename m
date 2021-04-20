Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A1A1D365F48
	for <lists+blinux-list@lfdr.de>; Tue, 20 Apr 2021 20:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618943440;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=imhbQD+m7e3J34GS+rebVlYY6R5H9+cQxYxVvxCv1l0=;
	b=K9SNvhoaKI8b7ZuM0gxy2Iu782GPzvLxexxaPsxqCd/iNa6z3zKTdmCH+ChwxtiQK02WfM
	6VXRHEK5DT7YSzXxw4c9URss270uPJpucWooftCCGOW08MTCS+QUAkWOxTSeZPIVeaxPsg
	8FdAkhU+i2S8D56/qp/WbUOzVCMfa1E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-34-88qD_jMZPx61TSy5VrLj9g-1; Tue, 20 Apr 2021 14:30:38 -0400
X-MC-Unique: 88qD_jMZPx61TSy5VrLj9g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1AEE7C7446;
	Tue, 20 Apr 2021 18:30:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3DF206EF40;
	Tue, 20 Apr 2021 18:30:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0CF1144A57;
	Tue, 20 Apr 2021 18:30:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13KIMtdV029187 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 20 Apr 2021 14:22:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 860B81134CCA; Tue, 20 Apr 2021 18:22:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8002D110DBDD
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 18:22:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 04107857FAD
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 18:22:53 +0000 (UTC)
Received: from sonic309-21.consmr.mail.ne1.yahoo.com
	(sonic309-21.consmr.mail.ne1.yahoo.com [66.163.184.147]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-190-fDjGpiFZO2WfAxl3stDk2Q-1;
	Tue, 20 Apr 2021 14:22:39 -0400
X-MC-Unique: fDjGpiFZO2WfAxl3stDk2Q-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1618942958; bh=/sJfZ8fmNTdzZ55TZUCpmvGj+U4V3QXrMSQY1M2krs7=;
	h=X-Sonic-MF:From:Subject:Date:To:From:Subject;
	b=IPAtabEg33dohkOqGeZdZNzkTWhOw9rftAByC6zNSe5c9A/9ftRtWHeZmBS8uoPxcgmpdRp6ZjVYVnHhh26FCgLzjvoht8RseN/zMKnQ/dRU1Aj5unmelrRxCLrtfp5L8ntuoKbdsXlT80paex8j3f4fQyiBrhAG80ju01SODMwV4Qg1zsUXR9Je//nxEmst711oVC4OTgWfKtbCBSGfr49mi0PpXGh2KzsiZi09ILwVR4cpQSfvffFP8qt60ln61uJoR5QfCRGtiF6/fOEMqs9jeO2xR2l/R/RndPJ7MrheZoH7bNaFJ5MAH+b0hoNb3mTMEtnmcjbSbTUdWOP5PA==
X-YMail-OSG: AJ9sNJYVM1lFw1nWi2Dut3DWHHAfdocOREJgaPTxhLIC8gT9fuCWex4_wBn8gom
	QPU6zCUdaKnJRsSfi12Pd2YnQvC8MdzM7y2cxgwozlS2Ocq1FHtVr0g9pOQG1DkJKejVmXrOUQiW
	o_l0ATFJmqJWuxSyAF3oypxTbCaVjcyPvf9OxCUdXhDQWqmbq7sbNZ_y6QPYagHCgG0m.Fz125hj
	MNraHS7GBi27s7Ore74dIq6RAZ7MUHFqOset7ezHcvF.2E059zmT8.oheeBbk1.CVaxk39Ck1EaK
	1A.eefbZo8dQRfXazvLlh0YKSeD4X9EJVlpQqN6IL7My.DjSicbXKUXt_CsXM6WwJv1wNPLrx7B4
	SnI1GhfFCnqXenFoZwC8eyDtkHeddxaTVYkqYraVPi_pWB7W3gFwPq.geauz_B0FHcN_Yn5XAwAb
	JW93Bu_C_zpqouUDPjOWJzrMGrHfOaT3eaTasTCrUm0bliPj9nwYI3hkkjKptU_GBw8Fo.cfNhhb
	JJBR7QLXZECc_FlmnQHIN4eAYy_HRu1x.lxXyKM.WvSYMt_8UeDmXXxyRqM28pGJkTRn5jOMOQiC
	BgQ7TaO76MBNXy9jIHrkzUXm4L54wM.J25Yu4zpOYRDyFL1eBGywLuFt8tN4b8U0qgXbw5C0RwCF
	KFZJxxoH3hAcPvXq1.khT4oc2RZsxzWjx9t0oXzcLeIC9kEs6rzPJs2.iYnKLJD88jND83WNH4vL
	hBAuZeERAPKdddN3FciH2xb1_wPqJuhqSp16uamXVS1xfyMDMG1nmo2j4cjdzTihX_1nMYwBWENi
	gQ5U02EKOXXXi8mdwQaoqnWkOt4_uSnxZ_j6JwhpDfwvlR0vBn9TO94ff8YX_.oYZ1kCn8sP56Uk
	kixk2dMZmGtPhHt.5Qjz9KKtjRsBJBx.hPyElANCQO.l4bx_KZJzj4k0JaHu5pDqn5j7J0QHiEFS
	AIUVHUH.seYMVrz.Kr1.3h2AV13qutTJvZgS6EBj7mLWTkntewz2r9dFCVbnWIZHUSmo3F8TW2y1
	zoXO10hcw3My7tNE4HAf3vSdxmhB0BHgQ9eVRWUlcGWW9NrjIqe.n5UTCUj7LJFIJsgxCyQ_fgG8
	CbjvXE9o.QRc_rtjbrN1n.MtuLOqgOx6cMTesHzvpdQHWU4dwXt0T9bzKNNfiHcZmu_Q1YVasWMz
	vKkmQoIwBiCrZCybwY_I6sOUPz0pqqP5PjO..y.kgu4u_GutNgDEsvgQZ0x5KWqzPe2HlIREAPYa
	UkLvoORHXp9QBQp_pZ7SshSAj.giuK7lAc_f4.PTVaZn5vXMmEr6kRZUHNymxzLphuR7SauGdFoN
	yMFHyTk_PUKmhR2ny8W2e7xyolZUJEc0HTnlPXXMoMcLNZzpv347UuL5LCHBBKgaS97AEeg3sjsR
	iQpD4cxlTN4iJVzf5Nkrc2tHJRkhmz6oQGc0QAKeuGUHIa3.qGXbmuNyMYxig.sYgY3Ak6eq8gv0
	NMdzwdHrOLInMhyMqDtopU5Kv65eJVdVSSrYiLRzOM1UMvNVYlCLw1vdv7XcqKM0ftavwuq_A5Wl
	uY8UDCR_lCd44o4yfQX84O8hTBWLhWjS4GQ0NPvGQCgKbApwC0d33P8GVmTzNowqRZwd5syoZjzD
	fAq8UV5jBhZA.j4w_EnavMe2YL0U50_Zhc0SyqTgtT2jrOV1lF_gA5GMBn4fY4USoApBzn79m1_G
	5REVhyPvFDrUg0UulMLi96RoHQTeGpy86FGqSMkkDoDwAJlLP8xT1f9_zAG6na4yAR3nh8E6wbxH
	yVha7z0YSFaMX4AcTDR6rquoHkz7lzlfLwKOoVjZfs_hA4yqDmwgagEQ8k7gnC5UzcLCo0c1kTHR
	JiXKl6o1G7ep5LIsajhWGDh7n0PxsuMH0tsq1wusOUryfOkaBBeXZJhgbkNAmicqgAg.zo2ttzny
	KwaIVseZoJk2moQO0O2IyTefnAu2HERoylhoq66HaiKf8pnzM5Jb3B5j1p3HOeRGeGwVESfUzTHT
	wciTcbQTNsX9qBEYL2NKBLHldiyKsTvEYIsn_YLCAIQpcBWD6iscezmCgogjb4RSY6R_QVDn_DYj
	Yx3aEU5C5hc1Cb6nYLj1qE2KrMdNmkSxS_VHwSg50YvuN.Bcf0afv3YQbtrUDRJTvnhEqRTCl4Oi
	ZHpQ2jxVkOXZ5YRu.HiFsoaIH54j4ixHnRvga23yKr3MWye_898th_5Q73cZVXJg4o1v0oNkm44T
	g1QONBTgHp19FG4hbaPP65hjKx.KmaSnco4P5Dp7kdBZHZjWiUS116T43u9X4fso8UTodh9KfY8C
	Mnz0YTBSek1pTK_Ccbu1feMiOWHDb5GCQnqyFKDLr73OpsIj4AU5L8Ma5EBNC4Tuf2fEV4EinMi.
	koQ--
X-Sonic-MF: <jones.cee7@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic309.consmr.mail.ne1.yahoo.com with HTTP;
	Tue, 20 Apr 2021 18:22:38 +0000
Received: by kubenode586.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID 32d20e8a71a61b3b933bdd8e26e63c1c; 
	Tue, 20 Apr 2021 18:22:37 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Subject: Re: How to navigate - how to flat review
Date: Tue, 20 Apr 2021 14:22:31 -0400
Message-Id: <27BE7A32-1BA8-47DA-85E6-5004672872F3@yahoo.com>
References: <739c7f2c-1088-e093-f663-f7a83ed192ed@gmail.com>
In-Reply-To: <739c7f2c-1088-e093-f663-f7a83ed192ed@gmail.com>
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBjYW7igJl0IHNlZW0gdG8gZ2V0IGl0IHRvIHdvcmsgYXMgSSBhbSB3YW50aW5nIHdoZW4gcmVh
ZGluZyB0aGUgb3V0cHV0IGZyb20gdGVybWluYWwuIElmIEkgYW0gd2FudGluZyB0byByZWFkIHRo
ZSB2ZXJ5IGxhc3QgdGhpbmcgdGhhdCBpcyBvdXRwdXQgYW5kIHRoZW4gZ28gdXAgYnkgbGluZSBm
cm9tIHRoZXJlLCBpcyB0aGlzIGNvbnNpZGVyZWQgZ29pbmcgdG8gdGhlIGN1cnJlbnQgbGluZSBv
ciBnb2luZyB0byB0aGUgcHJldmlvdXM/IApFeGFtcGxlLiBTYXkgSSBydW4sIOKAnGFwdCBpbnN0
YWxsIHVwZ3JhZGXigJ0sIHdoYXQgd291bGQgbWFrZSBvcmNhIHJlYWQgdGhlIGxhc3QgbGluZSBh
c2tpbmcsIOKAnWFyZSB5b3Ugc3VyZSB5b3Ugd2FudCB0byBpbnN0YWxsPyBZL27igJ0uIFRoZW4g
cmVhZCB1cCBhbmQgZG93biB0aGUgbGluZXMgYmVmb3JlIHRoaXMgdG8gcmVhZCB0aGUgcGFja2Fn
ZXMgYW5kIG90aGVyIG91dHB1dC4KCgrigJwgTmV2ZXIgYmVuZCB5b3VyIGhlYWQuIEFsd2F5cyBo
b2xkIGl0IGhpZ2guIExvb2sgdGhlIHdvcmxkIHN0cmFpZ2h0IGluIHRoZSBleWUu4oCdIAp+IEhl
bGVuIEtlbGxlcgoKPiBPbiBBcHIgMjAsIDIwMjEsIGF0IDY6NDIgQU0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+
IO+7v0hlbGxvIHRoZXJlLAo+IAo+IAo+IEkgYmVsaWV2ZQo+IAo+IGh0dHBzOi8vaGVscC5nbm9t
ZS5vcmcvdXNlcnMvb3JjYS9zdGFibGUvY29tbWFuZHNfZmxhdF9yZXZpZXcuaHRtbC5lbgo+IAo+
IHNob3VsZCBnaXZlIHlvdSBhbGwgdGhlIGluZm8geW91IG5lZWQuCj4gCj4gRm9yIGZ1cnRoZXIg
aGVscCBhbmQgY29tbWFuZHMsIHJlYWQKPiAKPiBodHRwczovL2hlbHAuZ25vbWUub3JnL3VzZXJz
L29yY2Evc3RhYmxlCj4gCj4gdGhhdCdzIE9yY2EncyB1c2VyIGd1aWRlLCB3aGljaCBhbHNvIGNh
biBiZSBhY2Nlc3NlZCBieSBkb2luZyBvcmNhLStoLCBmMS4KPiAKPiBIb3BlIHRoaXMgaGVscHMu
Cj4gCj4gQmVzdCByZWdhcmRzLgo+IAo+IEZyYW5jaXNjby4KPiAKPj4gT24gNC8yMC8yMSAyOjE5
IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBIaSwKPj4g
Cj4+IDEuIElzIHRoZXJlIGEgY29tbWFuZCB0byBoYXZlIG9yY2EgcmVwZWF0IHRoZSBsYXN0IGxp
bmUgdGhhdCBpdCBzYWlkIGFsbG93ZWQ/Cj4+IDIuIEhvdyBjYW4gSSBlYXNpbHkgbmF2aWdhdGUg
dGhlIG91dHB1dCBmcm9tIHRlcm1pbmFsIHdpdGggb3JjYT8KPj4gCj4+IOKAnAo+PiAzLiBTaW1p
bGFyIHRvIGFib3ZlLCBidXQgc2F5IHRoYXQgeW91IGFyZVNpbWlsYXIgdG8gYWJvdmUsIGJ1dCBz
YXkgdGhhdCB5b3UgYXJlIG5hdmlnYXRpbmcganVzdCBzb21ld2hlcmUgaW4gc2V0dGluZ3MgZm9y
IGV4YW1wbGUuIElzIGl0IHBvc3NpYmxlIHRvIG5hdmlnYXRlICBtb3JlIGdyYW51bGFyIGFuZCBn
byB0aHJvdWdoIGEgbGluZSBvciBwYXJhZ3JhcGggYnkgZWFjaCB3b3JkIG9yIGxpbmUgaW5zdGVh
ZCBvZiBqdXN0IGRvaW5nIHNoaWZ0IHRhYiB0byBnbyBiYWNrIGFuZCB0YWIgdG8gZ28gZm9yd2Fy
ZCBhZ2FpbiB0byByZWFkIGN1cnJlbnQgbGluZT8KPj4gCj4+IAo+PiDigJwgTmV2ZXIgYmVuZCB5
b3VyIGhlYWQuIEFsd2F5cyBob2xkIGl0IGhpZ2guIExvb2sgdGhlIHdvcmxkIHN0cmFpZ2h0IGlu
IHRoZSBleWUu4oCdCj4+IH4gSGVsZW4gS2VsbGVyCj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1s
aXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

