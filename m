Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8E84AA391
	for <lists+blinux-list@lfdr.de>; Fri,  4 Feb 2022 23:53:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644015213;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Xyw6nNj5/7EYQ6xL9kJc3N0SNwnsm0FAM60i8edIWOk=;
	b=PWfIMaI6i5NpJwVHtahmeYkLupJh19LG2H20rYc4mcl0w1v0lpnUKST9n+RqSz5q1EWo3F
	eiAiMZaO58jd9N9czT5MyISUlmZuKqZqY38sHsSRcFA9E5KJl+lNgdiNDKqNtzwN3ciHxA
	QikTV1PEzfv34zt/tHSxfibwpBIJEu4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-130-gOsR_-QxOB6IpHxMUzebYw-1; Fri, 04 Feb 2022 17:53:28 -0500
X-MC-Unique: gOsR_-QxOB6IpHxMUzebYw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EE806363A6;
	Fri,  4 Feb 2022 22:53:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1BE825ED4A;
	Fri,  4 Feb 2022 22:53:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E77234BB7C;
	Fri,  4 Feb 2022 22:53:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 214Mo9Jl020311 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Feb 2022 17:50:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 45BEA40F9D7C; Fri,  4 Feb 2022 22:50:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4112440F9D6D
	for <blinux-list@redhat.com>; Fri,  4 Feb 2022 22:50:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1E9491C07CC7
	for <blinux-list@redhat.com>; Fri,  4 Feb 2022 22:50:09 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-510-nBx_0as5MSOmRFAPICAu_Q-1; Fri, 04 Feb 2022 17:50:07 -0500
X-MC-Unique: nBx_0as5MSOmRFAPICAu_Q-1
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx004
	[212.227.17.184]) with ESMTPSA (Nemesis) id 1MXGrE-1mibrd2cb0-00YjnM
	for <blinux-list@redhat.com>; Fri, 04 Feb 2022 23:45:04 +0100
Message-ID: <20220204.224600.337.7@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: Help with YT-DLP
Date: Fri, 04 Feb 2022 16:46:00 -0600
MIME-Version: 1.0
In-Reply-To: <b6b3ae87-95f6-9e92-0d91-51da13c97572@icloud.com>
References: <d3189fce-4aee-cb12-9498-2e19f7692ae0@icloud.com>
	<87F1D5DF-B674-4C23-8D16-FA6F8E345415@linux-a11y.org>
	<b6b3ae87-95f6-9e92-0d91-51da13c97572@icloud.com>
User-Agent: POP Peeper Pro (5.2.2.0)
X-Provags-ID: V03:K1:jQY/+ob5ldrDUlM8+TYehbec/LypWJZkdvajGBK8gJ/ktfmMRuW
	+Cuaz3BZs+3bDjfcHyJjxJRBZMkRfX1sIMFXA0u1yvNn6dmYsRBRXdbKk3zVTHGSvQIOtFz
	y3hXBwmDAhuuGYhCyhs8AJpEr/bjmpXh3zCgOa+0eaZKENkQ9flfoscH9Sq40GkkmDzEsJT
	1J6To+Y8uqVkM8tTrC3ow==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Q/n2K5QH8sw=:ZqQYcCoAptPKzRdmhBAvDK
	AG1aGZA72NO5vL76NHcY0RA1E6TZpCWemz5nbKyF6ncnnHGClqRT8KT1u+I4VGivEDMY/NFLC
	pYZdu8gnHQCWikvlxmzXbvgAn4e1klwztQofV11lvmbvAN6cJGmqHp7qmYXHrmuayoK6z4uam
	sVs1GEKZYnf8ADN5rzNZLTX5c1V/euy68EA03tvkd91vIFTtaBrnJgW10ij/k0YX801kUVW8V
	DtN0D6V0Xkgew0viEdzdsVlPmknaqpm+z90R2x7sZ/8jTU7IJD2lzRphmWQN1LWqc/IP9rrhy
	wq+4IVy7C9wE5WFYg5EXiBqHgEItSkMLjJaVjblPNEKv0OoaMF+eKVfy3tZySzbcq09pU1n8h
	oEypN+h3sMbG84Nz5/sBH+nvO8cjArbYGjT2KGXR1ukf2NRerO5pKjG/JKqQcEStYgAEkeGCP
	Gtd2XUCSc5MXB71luCaH/eYfztfVmeeHtjnh+gnyPCYahQXWDUoSpg9nmNd25IFopo2yvjUTJ
	daJlWOA89Rfpy4seQfsiDtPUCtWWj2FL0Mqsb0rJ6eveeCQRO/s9ZgN+PSLJSl2kKg1g0gFNT
	1RnGfZkN5CRqqT46H6sxxd7HpFMMi8bg+Exrymm9CPVSjLF+a6/wXv2j50GU5aVfPxeiZGjLF
	gADt5cqXEI3/dipnYbGBDMxiisdO+c3PS4GovV0eBqONsBg/t5+FzZxtiK+zNGtt0B7A+0TfR
	pzKHZBIXRR7aGWxEpXnWjxH7HRt9XE1MvBF82+45GBYdgXopTcYklCMqgXpFPCVw7dbeFQWIJ
	VAr9Bxf6VdILvlTxeDusnBoYjSrR3WPTHsrpYfkPTF9WepuVfjOoQ7qsA9NWLJ0IMXCPsdYxX
	yi6aAdP1zgVtq/D5dJ9zXxW3rDWqhVqtjq5HE/ov0TQCn41ROh5laJ5SuI8yoMTcmUuGzJXCl
	lKiNZ5w/fRcvQVRPVEw44Vfa1eWki5p00pG0aHGZmIypUQTJxvOBsgiGitSFKci+528LMpa+1
	5ZgbJ0jtINzNAmqyus11EGvblDxbKwoqilNXO6675xQM1UP2ftOjYuZnPmphWDalhD7b2Mf+b
	8SFnNA+CFbe43c=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 214Mo9Jl020311
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

My usual youtube-dl line is as follows
yt-dlp -ciw -x --audio-format mp3 -o "%(title)s.%(ext)s" <video-link>
This names the file as title.mp3
----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Fri, 4 Feb 2022 17:19:23 -0500
Subject: Re: Help with YT-DLP

> Thank you Chrys,

That fixed it.

Now I need to find out how to have the video named, instead of just
letters and numbers.

Thanks,

Rob


On 2/4/22 16:57, Linux for blind general discussion wrote:
> Howdy Rob,
>
> Well there is an open single tick but missing the closing one in -o parameter. So the string is not terminated.
>
> Cheers chrys
>
>> Am 04.02.2022 um 22:40 schrieb Linux for blind general discussion <blinux-list@redhat.com>:
>>
>> ?Hi,
>>
>> I am trying to use yt-dlp to convert YouTube video to mp3.
>>
>> I installed the latest version of yt-dlp using the info below.
>>
>> sudo wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp
>>
>> sudo chmod a+rx /usr/local/bin/yt-dlp
>>
>> update command
>> yt-dlp -U
>>
>> When I use the below command, I get nothing but a greater than sign.
>>
>> yt-dlp -f 'ba' -x --audio-format mp3 https://www.youtube.com/watch?v=dQw4w9WgXcQ -o '%(id)s.mp3
>>
>>
>> Thanks,
>>
>> Rob
>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

