Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 378D44973C8
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 18:45:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642959920;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IkIu+2+oWOg89cJKm2gV3L5QG5U7pXmS0cvYUCmQ4L8=;
	b=RiMZN1wCzwkxjEVtx/4iIN+Nh52GENoCHk3tdm7Ppprj7+hZDFG515gmnuVuUe2zvCIGx4
	F+hgdxhs3gbCPuZ3zpJBPrLDIB/O6nZOgFl+ePrjy19p4zaf8QM+8S3MZyfdjZhOi2zUzK
	cjite8ZucrYYxsZGnOMGSBGi+2TyE4o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-591-_vTB8NO2MrynmGzTGqNWMw-1; Sun, 23 Jan 2022 12:45:16 -0500
X-MC-Unique: _vTB8NO2MrynmGzTGqNWMw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9753E814243;
	Sun, 23 Jan 2022 17:45:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB0B434D47;
	Sun, 23 Jan 2022 17:45:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B39D61809CB8;
	Sun, 23 Jan 2022 17:45:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20NHiwnM020747 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 12:44:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B4FEFC15E74; Sun, 23 Jan 2022 17:44:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B068DC15E73
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 17:44:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 79662101A52D
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 17:44:58 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
	(mail-dm6nam10olkn2060.outbound.protection.outlook.com [40.92.41.60])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-15-2ylFwrP0OqK6X5Bu_tya1g-1; Sun, 23 Jan 2022 12:44:56 -0500
X-MC-Unique: 2ylFwrP0OqK6X5Bu_tya1g-1
Received: from PH0PR14MB4296.namprd14.prod.outlook.com (2603:10b6:510:29::21)
	by SJ0PR14MB4364.namprd14.prod.outlook.com (2603:10b6:a03:2ca::14)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.8;
	Sun, 23 Jan 2022 17:44:55 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::fdbf:7949:d13c:6dd1]) by
	PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::fdbf:7949:d13c:6dd1%6]) with mapi id 15.20.4909.017;
	Sun, 23 Jan 2022 17:44:55 +0000
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: Favorite out-of-the-box accessible Linux laptops?
Thread-Topic: Favorite out-of-the-box accessible Linux laptops?
Thread-Index: AQHYD80WL1otnosmfkaxmtw2DauQsqxvmr8AgAC48wCAAAWmgIAABcgAgACBqGA=
Date: Sun, 23 Jan 2022 17:44:54 +0000
Message-ID: <PH0PR14MB42964C73F94AFBFD80D51B8FC85D9@PH0PR14MB4296.namprd14.prod.outlook.com>
References: <CABKqQvF9-ZUkr5U6QssKsxhb7oD5iL4tLNORcWNYqJX-HDi9-Q@mail.gmail.com>
	<469727D8-F6CD-42D8-96C4-88845662340C@gmail.com>
	<e1b844dd-2c47-5217-1978-b775319ea70b@gmail.com>
	<3449a41e-479-d678-f49-310f4c2eff@panix.com>
	<b4515952-fdab-c9e1-4a2e-07c7d2f6c783@gmail.com>
In-Reply-To: <b4515952-fdab-c9e1-4a2e-07c7d2f6c783@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [jmxhCCMyC2JtcsjDdpekiwEoHb09BXMi]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 312a518e-ae2f-4a7d-1302-08d9de9810f2
x-ms-traffictypediagnostic: SJ0PR14MB4364:EE_
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: JIhXDR9rG/PjoZ0BVfwhu/loLEWyGsooxHwRX6w4BYJXWjPwdXC9pLilW6ZfNaVRY5erpMldSSuk89oIZ6Mtvs8tjedQgLuA2EE10QBfooZgOg6FjNwU92BbLGeW7HS2B6hO2VMn3qJrm7DVAhWEjMzamVO9gGZIdbfEYyO7yJ/0roGUTI81UecVuK7nasB/L4bi9KuWoyZSKROLPmNhA8gyz7vLO6hzc4AVA39IMLFN1yhiSiq2PY0shaOLB7YRhBoc6kZErpouSJdbFsyIvR02D7P/8tPgrTT/O0gWSjK+F1Z6ouimLa444falfsMgw2qOgk2K4w9DzOxWlsrxg2OEjySxXVdZyoeOvlPQ2u+o4/R0trDJRGlgqX/9mpGWFed8aOqIgUit+YcIYogWrKcX43NP0v58S5N5OztBvb7cCfKJiHdqW7cCO+X+74v6w3XswoPiM93lNO9+06iiyXv1cOK4nH93pxOZHQPTPuEtYvwsFqFybRBLteLBkTU9Mu2FT6PhFwje3gwvmILmcdfWFtnSQTe0YA4jEfAYvTGSh8vUr2yResffMyYQV7sbSfFf0v7N3OxA4hfmedwOZKNkBPajvjZW0XCLYqAu6Nws3hkXzdHfXIEqXPAlNheQeLn0P8FcHvDPPq0GPCqTagH1RAAMkQc+A3USwpceTbI=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 9orQbL+lBnxqCkg1jsVTIr/NVx5HpunmCpSAKuEp9tZcKegOKwZ5o81nBek25YI0347Gy/xn6ujEvCabRvW0rq1mb5h0JYjNeLScIWOKQ8EdI9BguvSs52q+pwZcXKkH4UkwvwzIv5KxFmlBcIf5nPNfvogbpoaLp+jyNVdOoq0/2mv6tlppPw6pveWuPMkrrq0QmVf797wJrJsUZTbrKGLJn1r5mp6S0n8PbBaHiGJG9fZbFOWjNk3EImfn1399u8HMDejrAzEQsgNheo/KuMY0s7wKEK+cb9jXsao1jlnQtvT1zcJTZxf9TcpM+7uE4M8YzD6iXMhhgiL+POcwwoCUMSEC4/obkqlO/qGaugCTB1zuK29apCdLCjFcG1KZ7iReGDxqyd/2sF9OM1yIafyH2bPiwbRph5rxSDOk94X27lv7YuWakha/MIkhEbnpuzidg6RT7EePV9oxC/SggK19/AJTWzI1LJhnH0vEeGJji8N4Nresp6AElSlmZPyBRz5/A/JYugk+bmxdUt6bxHWgxfbNxiJ0ict9mWhMbiN6hev+AxuSkngFCoKiR7E+XRPXpOkUD1hzaHp5l89vvKh3KCRYVxVP1Um0vO64fOcnPq2i6CJO/Wu/cHcVKA6qpeFTt5+zy7L69X5UVW6N+szVURlR5W3WDzEa0cS+cMXCb+kQMSIwanoruc3lmjCF9UNDauubHxuNNoqxO+2QMwiuwZJJ+lsEhnQ0JZe15Zexzc84QFWFs4dEi2Vt/Dkxf6H/TW3cX6thMmUa7oKECenh7YHq8liKsquCEpd34RqWBmYvUCnf/84AxSvGYiSKwGRcVlbrI6yax7PENPY/9pWCwrPLOWO+Y9yEo/znlHBaW9M+muz0km5WP6nVynUu/GndcMwkXNoZemkCwTCfasxwXe18SBb0sM0dPFcPVYgKo6g04AdrK7W1gNkgNKCh
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR14MB4296.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 312a518e-ae2f-4a7d-1302-08d9de9810f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2022 17:44:54.9862 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR14MB4364
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20NHiwnM020747
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
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Exactly, and if someone wants to have someone else do that research for them then who am I to say they shouldn't. I've done the research myself and ended up installing Linux myself on two laptops, an Asus and an HP. Although both were successful, I had to do a lot of research and tweaking to get everything out of my Asus with Linux and it took a lot of research, as well as trial and error, to get the HP to dual boot between Windows and Linux and then boot up into Linux by default. Like I said, if someone else doesn't enjoy this kind of research, trial and error and tweaking, then I'm glad they have options where someone else can do this work for them, even if it costs them a bit more. Of course, they should know that they don't have to go this route, and they can install Linux themselves, but everyone should know about their options and then make their own informed decision.

--
Christopher (AKA CJ)
Chaltain at Outlook

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
Sent: Sunday, January 23, 2022 3:56 AM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Favorite out-of-the-box accessible Linux laptops?

That, my friend is why you do research before you buy.


Example, most all HP machines will take Linux, no issue. Lenovo ThinkPads are known for being ideal for installing Linux. I've never run across a newer Del which doesn't run Linux like a champ.


Just look for something well known and in your budget and google it's 
moddle+Linux like so.


"Example HP laptop+Fedora"


You will almost certainly find the info you are looking for.


I've always believed, if you want your system to work the way you want, either use a fresh install you do yourself of a distro "you" like, in my case Slint, or build it yourself, Arch or Gentoo, if you like.


Warm regards,

Brandt Steenkamp

Sent from the Slint machine using Thunderbird

On 2022/01/23 11:34, Linux for blind general discussion wrote:
> Well now, that just depends on what brand and model of laptop comes 
> your way.  I remember a Dell Dimension 1550 that wouldn't install 
> linux on it at all.  The retirement program I'm with subsequently 
> trashed that laptop as a result of that failure.
> Not all of the older laptops will take linux and perhaps some of the 
> newer laptops won't take linux either.
> Some people prefer not to gamble.
>
>
> On Sun, 23 Jan 2022, Linux for blind general discussion wrote:
>
>> I have never bought a laptop that comes with Linux pre installed, why 
>> should I, when I can just do it myself, and then install everything I 
>> want/need in a system.
>>
>>
>> My favorite machine thus far would be my Huawei MateBook D15. It has 
>> a very nice, grate, big keyboard, yes, also a rather large screen, 
>> but what can you do? The battery is also reasonable.
>>
>> Warm regards,
>>
>> Brandt Steenkamp
>>
>> Sent from the Slint machine using Thunderbird
>>
>> On 2022/01/23 00:12, Linux for blind general discussion wrote:
>>> Well,
>>> For me it was always either the HP Pavillion or the Dell Satellite models.
>>> Relatively easy to use, come with standard options and a nice big keyboard.
>>> Yes, I have large hands. And yes, like you, screen size isn?t 
>>> important to me. Still, with a larger screen there is video 
>>> capability that can be retasked easily enough. Also, since most 
>>> laptops often use screen size as a depending factor, a larger one will have the advantage of a larger keyboard.
>>>
>>> -Eric
>>>
>>>
>>>> On Jan 22, 2022, at 1:16 PM, Linux for blind general discussion 
>>>> <blinux-list@redhat.com> wrote:
>>>>
>>>> I am looking for a Linux machine to use in graduate CS courses. I 
>>>> probably want Ubuntu or another common distro that comes with the 
>>>> screen reader (I assume Orca) and other a11y stuff already 
>>>> installed. I like small, light laptops (since I don't use the 
>>>> screen) that have decent memory and battery life. Which machines are your favorites.
>>>>
>>>> Thanks for the tip on VmWare the other day, BTW.
>>>>
>>>> Amanda[0]
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fli
>>>> stman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C0
>>>> 1%7C%7Ce74ba0a060b94f06506508d9de574ec8%7C84df9e7fe9f640afb435aaaaa
>>>> aaaaaaa%7C1%7C0%7C637785288840445207%7CUnknown%7CTWFpbGZsb3d8eyJWIj
>>>> oiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000
>>>> &amp;sdata=FTdke8O6obEtf%2F9waUlRNAbXZfb%2FP998aNF9pK9s5lE%3D&amp;r
>>>> eserved=0
>>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flis
>>> tman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%
>>> 7C%7Ce74ba0a060b94f06506508d9de574ec8%7C84df9e7fe9f640afb435aaaaaaaa
>>> aaaa%7C1%7C0%7C637785288840445207%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC
>>> 4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;
>>> sdata=FTdke8O6obEtf%2F9waUlRNAbXZfb%2FP998aNF9pK9s5lE%3D&amp;reserve
>>> d=0
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flist
>> man.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C
>> %7Ce74ba0a060b94f06506508d9de574ec8%7C84df9e7fe9f640afb435aaaaaaaaaaa
>> a%7C1%7C0%7C637785288840445207%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLj
>> AwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata
>> =FTdke8O6obEtf%2F9waUlRNAbXZfb%2FP998aNF9pK9s5lE%3D&amp;reserved=0
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistm
> an.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7
> Ce74ba0a060b94f06506508d9de574ec8%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7
> C1%7C0%7C637785288840445207%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMD
> AiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=FTdk
> e8O6obEtf%2F9waUlRNAbXZfb%2FP998aNF9pK9s5lE%3D&amp;reserved=0
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7Ce74ba0a060b94f06506508d9de574ec8%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637785288840445207%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=FTdke8O6obEtf%2F9waUlRNAbXZfb%2FP998aNF9pK9s5lE%3D&amp;reserved=0


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

