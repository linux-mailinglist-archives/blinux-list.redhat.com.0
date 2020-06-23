Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id C1CD12053B4
	for <lists+blinux-list@lfdr.de>; Tue, 23 Jun 2020 15:42:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592919764;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZVL+f2utaB+/u4B3SgSkmTV25+8oLXUf2Er2MFG/No4=;
	b=X7xTI3Cszk5Qy+tA+nh+RQdaF/+fBHNYR5nU+2M7zC/8ge5H9k5rW/ge7U5jEteBrzInZb
	Dw7bTAgEWrgd7GEhwmKxMsH2meXyvRZFIYkboQ/FGrodf9l14+/uvlyY7APHzAzHE/c8OU
	81/8FSSHbXt6Tl+NteMIl6F6jKS7Oro=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-354-YJTGPygLOOORMC-0CF0TIQ-1; Tue, 23 Jun 2020 09:42:42 -0400
X-MC-Unique: YJTGPygLOOORMC-0CF0TIQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 533738035AC;
	Tue, 23 Jun 2020 13:42:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 131597FEAD;
	Tue, 23 Jun 2020 13:42:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B0A1D833D5;
	Tue, 23 Jun 2020 13:42:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05NDgW6Z007641 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Jun 2020 09:42:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5770C217B436; Tue, 23 Jun 2020 13:42:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 52F60217B437
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 13:42:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DD02D1859163
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 13:42:29 +0000 (UTC)
Received: from sonic303-2.consmr.mail.bf2.yahoo.com
	(sonic303-2.consmr.mail.bf2.yahoo.com [74.6.131.41]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-460-lTQTPJhgO9Knp87bbWsbNg-1;
	Tue, 23 Jun 2020 09:42:27 -0400
X-MC-Unique: lTQTPJhgO9Knp87bbWsbNg-1
X-YMail-OSG: FtjI63cVM1lPhtW3VvwgssICoHNxNAinKnZBfj0UcRA2HaiHo..AuiDqaQZ.juV
	0A5r.frkJtNKpASV5KoUwQtWJqlbY.9SEBPy0cGPgtN6iImUo9YPLnZXQAo7MXAO8w3gVZfV0ik4
	cJ_howEZ5aGnPkxPq6up53Wb4Ky240buJapFbdh2qNzdLJWhYsK2754O6Tmu_9Ojx8Qi7yu3TxlM
	wxvrEXBsDvrJ3U5K7YNPDQ__s_TAJ47QtST8w6pNl_yXXo8LkJKf.dNSdQg2MkredcCkDwJFVQ8B
	LLdraTBCjAiB5QVFnMSqBygzPZ_FMP1gY3VzX6MxTvKOBkrfnAr1j_GcbmMWcP3LCBWoOsfD0AXP
	xViNizunhRNSAxd5vWEjG.qQew9VEPyhwXlj4ibO8o2br8er2hBG9InCV7hE_odM5EfgO6F_ePO2
	X3y9ZxC.u2ONznobgUYTJYGkNf5Hl8Bk3qXfyYG_PFJS8S_oi8JwFnAbK_0XaoPcTtLcdsmtQnbD
	RWU0NLXLyTSpKQWRQdH.sdQYOOYImmcUxLBdMaASRTw9H2LrOGdDdQQQwlg21AxbURoexTeoBhEy
	c55EqshhG4CN3bIcO6Pezu0MYx9rJ18EWgo6BhTMCPeNn2IuY3UX9skGQFP2kqwgP3Jtzo7T9wm9
	QWtXK9tBfv_TfTnbNtOQakbCBpPPteUQzuaNa8cyLKbyw05BGQJx282w5B1xE9sLVKe1V9SOt..7
	YbnIpUx9f1cB71uCy06zLmENRF4WF9jL48IJ4GkvAlM5emkc_8qG7wkwzguEViCHnaghKEWdNd0y
	dMY.O.nTRtILuhsEALKsHnfMWBsaCpMdX6mZKfzV1mRCURn_Re2bLX6Q9K2Kx0o9tNFNEjMTUudL
	zijiFjj32QV1zO3QrrzOj1B7mR4Y17dLu3QxzA4KMKjNgJEqaYxPdRrSt9fkeDy3XynLm_MQpOqY
	Z75rJCNfvUSDkiuut0oEG2QvFvG8xjpQ4WlKQ7DNY4JYq74SsAAbUvp.pW4cahVo6SeEGIk17Fh_
	mmC4R5SR6HFRmZr06XTGIEC6Ii4KzIyBMz.0Kgg56o9tYJHIw1Itr0dezQgzraJRi4Jg6HF1opyn
	PY7HOljnd3XIM85b0BtZkit8mJWPHZX9pHLWNodV.eI2LFaHATr7i1YQjPJvOtm46C2EUs225eXs
	V5jDuF.hwLZpyj8iXFDSyW2iUfl0In24XynAOZr9b.PvlqPoKH4FXM9CXtioj.OCTSCu0QiLVZMv
	eMx8Tj1SBN3cBPZsLU4RFaLfmdhu2Nm5XnLXZX6ZRJ2T.J0Mo8TET_x0DkU4jzBF1vjSjO3DdOJ1
	dv.PRyevoKYUn3Dg7NG._OaEachfFts9mYOUUbojGaPZy8SpJiMjtRa.WbP5tnMTUcko116TYHGe
	Ik6K4ixQZUCroOMPCJ2BijPGbarxyHS2DTyNRIlURJzo-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic303.consmr.mail.bf2.yahoo.com with HTTP;
	Tue, 23 Jun 2020 13:42:27 +0000
Received: by smtp420.mail.bf1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 8ed74878251aee503aa0e7cd1a80dfd6; 
	Tue, 23 Jun 2020 13:42:22 +0000 (UTC)
Subject: Re: off list questions
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
	<F216610A-50CE-4BE6-A7B5-C1C5DA236210@gmail.com>
	<020601d64807$b2b22a80$18167f80$@gmail.com>
	<D32CF46C-F003-4E5C-B518-B78451F8909A@gmail.com>
	<84E95FBD-9BD7-4D68-A1AB-4C63B4526038@pipkrokodil.se>
	<EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<0BA842DF-6DEA-4352-A635-B447ECB597E2@gmail.com>
	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<20200622.140639.018.15@192.168.1.130>
	<004701d648e3$0ac2e850$2048b8f0$@gmail.com>
	<CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
	<e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
	<C89E4DED-1132-45C0-BE16-E42E2E9B6ACD@gmail.com>
Message-ID: <1fdcb072-31fb-af97-f126-939175c776ae@verizon.net>
Date: Tue, 23 Jun 2020 09:42:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <C89E4DED-1132-45C0-BE16-E42E2E9B6ACD@gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

I don't know, sorry to tell you.


Al


On 6/23/20 9:00 AM, Linux for blind general discussion wrote:
> Hello Al and everyone else.
> How may I write to someone, if I want to explore a linux topic with someone off list?
>
>> On Jun 22, 2020, at 8:03 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>
>> My objection to using "literally" figuratively is that we then have to find a new word for literally.  In the example here, "exploded" is enough and is figurative anyway.
>>
>>
>> I'll skip the other stuff, and take a second of amusement that this became a topic on a Linux list.  (Then again, computers are quite literal--in their numeric fashion.
>>
>>
>> Best!
>>
>> Al
>>
>>
>> On 6/22/20 6:47 PM, Linux for blind general discussion wrote:
>>> Yeah, I don't really get the objection to the word "share" in the
>>> context of telling someone about an experience, and while saying
>>> someone has issues is vaguer than saying someone's nuts, I don't
>>> really see such as euphemistic... granted, someone having issues could
>>> just as easily refer to everyday stress and/or bad luck.
>>>
>>> I'm also okay with the word "literally" being used figuratively(e.g.
>>> saying someone literally exploded as metaphor/hyperbole for a fit of
>>> anger).
>>>
>>> Then again, perhaps my inner linguist is just more of a descriptivist
>>> than a prescriptivist.
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

