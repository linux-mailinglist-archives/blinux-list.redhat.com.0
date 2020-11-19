Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CDDF02B9CC8
	for <lists+blinux-list@lfdr.de>; Thu, 19 Nov 2020 22:15:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605820534;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Y9UML936gEbapb/05xYAVO8D32SHiyXAOqScleUkJgA=;
	b=dqUPGL79dpMTFzAV/HHKpcyr+gqF3MJgLKWXQY1PJJFNXX41ajYW2+tZPwrZgRpoCfkNNO
	aqtCR/JoNXveN7tNQai5VgQNAL0/GGgj4Ga2EK5myfCk+ehRxi9Fs4oFjaTxx8hzEi/L8E
	+f7stYjkH2gOHuC2t4YDadURSbMi7kg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-231-A-khRFtAPK-tTvrKA-XM5A-1; Thu, 19 Nov 2020 16:15:32 -0500
X-MC-Unique: A-khRFtAPK-tTvrKA-XM5A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 286FC190B2B5;
	Thu, 19 Nov 2020 21:14:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 54FE010016F4;
	Thu, 19 Nov 2020 21:14:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BFC795002C;
	Thu, 19 Nov 2020 21:14:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AJLEat0026693 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 19 Nov 2020 16:14:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A2CB7DEEC6; Thu, 19 Nov 2020 21:14:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D4FADEE99
	for <blinux-list@redhat.com>; Thu, 19 Nov 2020 21:14:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 62F6B85828C
	for <blinux-list@redhat.com>; Thu, 19 Nov 2020 21:14:34 +0000 (UTC)
Received: from sonic302-3.consmr.mail.bf2.yahoo.com
	(sonic302-3.consmr.mail.bf2.yahoo.com [74.6.135.42]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-183-6ueKJxXuP2eYpw4bS5-7bw-1;
	Thu, 19 Nov 2020 16:14:32 -0500
X-MC-Unique: 6ueKJxXuP2eYpw4bS5-7bw-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1605820471; bh=gBvGNHHMs56zcsGby/6NDs49/JvAy7zWi+ZVref1WAR=;
	h=From:To:Subject:Date:From:Subject;
	b=G9Qrx944BkE+9oejETMtM23I3ri2QYT/QUDC+V/Vvk3Ia+9GTkzyv9hqbqE4oxmaOrIkW4Qlf0E5n7o/qNA6iOVz2/HoNqOOdBlaXVWBpifSm6Fmau0/g8t7zpyADW1xal/G3RAfHmSclIKYW12hlQHE9VXdEUreG9iKVMBQMNPXkDTZ4jRePfRUHBEMtE6GzL8Y5iPi9JPZ70I3iIxTfYUPgN2k2Hd1Y1b6K3n4e1f3BzrAPo4XjDK7KQlydGgei4KHJlww3MLYN1N2f+zMVzAo7Ue05BYV8UU4lXCk4ae2wcwBJ++q1itK5UxY59ZHVwYTMFSFUXdhsLWKk5egww==
X-YMail-OSG: lhpAgbQVM1kGbocW3jG_jMCZOAC0AMk9NaCX9O4cffpdDGeAPWwfxN0uRQjFkcg
	k84EbUxyxPcCagYr8lqYVXwweHb.ea8LfoYZDvgqSzHGoYB56CZg7JViX0JdqACAKYzgZBR3cage
	MPr7bRk2OBQTn4U2TivyZEBKYxRHoYPS2XVSbJfRySx48PJMI8DhtrZOQR96y.TsGWe4BIt6A5Yq
	AeWz2mZUHwUHo2A4fyF2n9M.z2rdiy1bUQz.TBDZrCGXpmMJTJ8EZEy5CB0Fs0QBlP0RdgQ5NC3o
	LLA7Mi42HOEJ6j4N8tjuMBBYNS3rD6pc.kbZ8De4mZTkdymAGwsUEYHDanQIdMePMX37xSOjVcMg
	IesKNEwaVvo9ZCu.zbEEJ44fWS0r9ZLc2M79GwuGK4WRZ6BkvcPnoUTuLnpntj4VAjAAp53_BBIE
	Pi5Wk4mB.y7I15GGYTxFK6roDDQfR7ohTuwX5x23cI7mNwCrwLEsjmHFwgBZnrCks5qnhsBOIq88
	0FZPr9RPP4grISPyay0GLoh2lPd.e.9flI_HopqAaHMHaWhPdmumEZfNPTN0gQLSqz.gZ41mrt89
	r6j8Wj8dAR23S6WqcCW204zdCVysQLFAdX.qI8ZoghJ4fYioVVVwc2hR9vjo5kbEVd4dBcHdUpee
	_p5tcqmhonL0pouLJIuVL5656XiJBLfPUDYmHRYmD7D8E_gHnrK3J4IYWRBc_bDhel57B0OUCPT8
	5f1x_Jd8syr8S2cUUFaCeEwP_8w03nF_.eQLQoVzg4SePI0sTy4D.zkVhR2vrqWsR2z.4ndMs4qY
	PrE15UdugRb2LQX40vFPsZUUsi1OO_N8GETO9YDTQGnioLeHxqkLGrG6TPNgVcPrs_gzTquOHI_V
	ZS50YZwvu2ZoNtmpiZRRN.sN_Lw0BKZeP1wl4eHB2jppq0pLHNaNTb7BlzJimiMrB1NuLUmlgqE9
	IorDqRluLWWBxVU7he1vVDNtSQCL.Gs9oeas908pA4Hu7JI8ihq1QTlJyJnUA9Syvl4bOj5vWY.2
	GBcqlJYK1S636D8.eLKb__NL6QZrwD3YlaC6m_WNDI9drBkWeTeyos.1ekwnoPF5AfXmOWWHiC6O
	.CcC79P5mH5SSZfViHuxoakWhoTMsALLNJCIYIj.QUylBt_cZ6RRqZ5G1Wnygu3o06Nq1kgUQbR3
	xQBPQh9bpYzPN5Lf1J0Z9UqpMTmctamgeZot1PGNvIQWwVtg2snRmw1I74RWUQd932fhqh60Ejey
	5g5aZ2SeH25Yr5SZIESSEfDvkXJlL1xuzWuAILVpE04jlO7UhySI2j1OU6bkKAm589GP9KRpmPxS
	CIthYquD.Oj4z0ErlSe04dMLD70yPxC3dTViBppivq_Ai55VjHAnsl4ex20TzyiwTTLluyKvOj9b
	PhMrAglgmIbviDS8YUeUQH_uBPVoeUjh7FsAl2LJ8NxlcNn0PYqnCERTQejisiPkzS35YRZ4pdbH
	nHXOZp9b_Ff3fAyLdFmt92iSSS1YSGpsBWb5Im0_bpc9UOKKf_C_6VTJOy0phIX1Bl3jU2y3_qne
	K0lJPbDQHQQXC1dWAAIXApmfvh_R.dFQgQIja5ncwhJDbmFBB6Xe2KusjfN2i5LQ98gV6_anjvTH
	2PRpKoyZfNLgniHP.7gBP7j0OufF.cZig.YFc0w9isZUHscv_d3knvbpnbHcUH8BPNthujkv5MoP
	0ApZtLlY9gwhxfYVe_C3H.IBvThNrM3ql3JaOWEFp8k3PMPsNTnXl6yjAtIRdOQ9sl5ZpBJ.xBhn
	RSjHS_i37tbh8Gf68iyBRAGnJd2wTkIR7yRRAOfh9w6SNHm67yaSuxS64jy50mbOpVR6lg93I0bG
	HoJ2Lgxir0dE8upKiTdbN.1pGpErN7yuDF0HimWjG_BIuX2wFuFX3YwN5HL6zptIJNOOBxPN1SdH
	jj3cr7_DjM3bxk2k.69bLPN1YZhgMb6fqXFpQEGHiH8SiQobBH.ncpecegylf_qGY9lYHV9RO9uS
	pxxuwt8lNowpZ6kkTFi9Fpo1Snz1RjDWzEEJH_iYZoT8lRwellLZqLq8zqF9W9Y6dFCI8eBplraU
	oc6y2l7B1E4lWcaaclpBS8IqxxCak8Uw6TClaNYT_jkQQ9FliPrNZkInYnoUlV.woL2.4MmaGovF
	CaxDBp20aO3qpwr9SW5zglliT6CwBw3cjE1Q4sZAgVrEv3RYIkC6JkXkpLawBVu2s4DD93hPzQT4
	hgJe2
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic302.consmr.mail.bf2.yahoo.com with HTTP;
	Thu, 19 Nov 2020 21:14:31 +0000
Received: by smtp404.mail.ne1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 608748852262338bbb89ea7d72c05383; 
	Thu, 19 Nov 2020 21:14:27 +0000 (UTC)
References: <87wnyhf7zo.fsf.ref@yahoo.com> <87wnyhf7zo.fsf@yahoo.com>
	<CAGJxbF6ErHJAGmFEjFrdcXU3iyNaf6_-FwtDasmWKGJga49d1A@mail.gmail.com>
User-agent: mu4e 1.5.6; emacs 27.1
To: blinux-list@redhat.com
Subject: Re: Producing Braille files on ZLinux
In-reply-to: <CAGJxbF6ErHJAGmFEjFrdcXU3iyNaf6_-FwtDasmWKGJga49d1A@mail.gmail.com>
Message-ID: <87pn49nj69.fsf@yahoo.com>
Date: Thu, 19 Nov 2020 23:14:22 +0200
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Devin,

Thanks. That is indeed what I had been looking for.

Stay blessed,


On Thursday, 19 November 2020, at 21:59, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> If you have Liblouis, you may be able to use file2brl:
>
> http://liblouis.org/documentation/liblouisutdml.html
>
> Devin Prater
> r.d.t.prater@gmail.com
>
>
> On Thu, Nov 19, 2020 at 1:43 PM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
>> Hi,
>>
>> How do we produce braille files on Linux? Is there any software for
>> transcription which works like Duxbury or Send to Braille? I just want
>> to convert my ebooks into Braille for reading on a notetaker or for
>> embossing.
>>
>> Thanks for your help,
>>
>> --
>> Jay
>>
>>
>>
>> Pure mathematics is, in its way, the poetry of logical ideas. :
>>    Albert Einstein
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list


-- 
Ishe
--------------------
-- 
Ishe
Pure mathematics is, in its way, the poetry of logical ideas. :
   Albert Einstein

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

