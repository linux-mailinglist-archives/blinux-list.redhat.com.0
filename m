Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 485C6463F64
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 21:36:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638304600;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LRG01Io/XGzXguoAp08DSWqmZoR3tqfrNJDCqb9Q6DI=;
	b=f8IQDxuQMG6nlksDxC0JU9YgndgRhP6cSTVEUyjBUgP4Ok+LW08V/hqy1vkx9rhGmUXj1t
	BN1h39bP8rEce+y6hCDQk6C2x6jXndL4DkjDU63sYplvzYAMl9bUNV3Uc6mI1m2kgPEpcc
	Xu5Tk2Pm1q/WWDQSB9cYSjMKrVCVNuI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-45-ZndMhdVUP8KWdsZqpbF3jQ-1; Tue, 30 Nov 2021 15:36:38 -0500
X-MC-Unique: ZndMhdVUP8KWdsZqpbF3jQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CA0001006AA0;
	Tue, 30 Nov 2021 20:36:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A6691000051;
	Tue, 30 Nov 2021 20:36:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E7C3F4BB7C;
	Tue, 30 Nov 2021 20:36:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUKaSoh026835 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 15:36:28 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B3B774010FF6; Tue, 30 Nov 2021 20:36:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AE18640CFD0F
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 20:36:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 90DA8811E7F
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 20:36:28 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
	(mail-mw2nam12olkn2106.outbound.protection.outlook.com [40.92.23.106])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-493-qd0RnT--Os6gWyKGt600fQ-1; Tue, 30 Nov 2021 15:36:26 -0500
X-MC-Unique: qd0RnT--Os6gWyKGt600fQ-1
Received: from PH0PR14MB4296.namprd14.prod.outlook.com (2603:10b6:510:29::21)
	by PH0PR14MB4520.namprd14.prod.outlook.com (2603:10b6:510:2::19) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.22;
	Tue, 30 Nov 2021 20:36:24 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::50cf:b04a:7dd3:b581]) by
	PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::50cf:b04a:7dd3:b581%7]) with mapi id 15.20.4755.011;
	Tue, 30 Nov 2021 20:36:24 +0000
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: What is the easiest and most accessible editor?
Thread-Topic: What is the easiest and most accessible editor?
Thread-Index: AQHX5VdoRbix9fGhXE6qTZuiU9GhqawbBkUAgAAIgoCAAAjmAIAAD+EAgAAOnICAAIOcAIAAaHIAgAAq66CAAAIwAIAAAOzQgAAJFICAAC6fgIAAAJYA
Date: Tue, 30 Nov 2021 20:36:24 +0000
Message-ID: <PH0PR14MB4296D8F752C6B2915D206AFDC8679@PH0PR14MB4296.namprd14.prod.outlook.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
	<CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
	<PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<4d3de3ee-529a-0829-300e-3a1999cf2a76@gmail.com>
	<PH0PR14MB4296ABD498F0634DA72DCA10C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<d7fdfa4d-de81-02bc-eb50-f741e3ab0c63@gmail.com>
	<bc065beb-52da-b768-adc4-4c43436dc600@gmail.com>
In-Reply-To: <bc065beb-52da-b768-adc4-4c43436dc600@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [MGmlphLZWGi4AT0dXl7hBwbwoIbGAf9i]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3138efc2-4c77-4057-09e6-08d9b44113c7
x-ms-traffictypediagnostic: PH0PR14MB4520:
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: 9XlFqkrbFXqFPXKcOH+fVXO7G2DidTMmlL9rRfkqAKaEJo+vUnzG6ULcQ90UpBNR/EkSVmhAnM128SLTklvB1bsSQWE7xacM3cSp6gg5yigjcN71GjcBIga5U9L9TrnguD4RRsc3QgDMkXK3N3lQMYGx03yt0+b0BiKnISVDcM/IFChes7oxg6y/DJXmidqIjR7BGXLtDmUDq90jcPDlKy1zHxSGlRimPOIzJFJvWttaFNKuaj72pWGvHQJ7VLS/CZmXQv64kxAVneyAmakJoxXZafcsmMBBU4MvI8LXlVwjxXGU84BM+yCaTaIJgL+/0bx5pVy5ySJmiinn+K+WQ1J6kjYYoWWgLcEEXqrmmSTpG00XNc5jcFhNfk1HuSO8bJUYh//1CfB9pZ5vLT6XDYvWklZ7ga0G55nkD80YjVWDImrgg5Mzugdo+HFoqtkQpmOtXa0I4l22g+qJu/Z8CM2PDa4QA3zKVlYFpnbTu2KyIxJPbnVlazBteh3KN3e1ywzHPjIZ3eFUCAoxiquwVIyECGdADCF5CldwbuJpZxZ5j36tZqCS+VA8ph+PraVLyQLu2hagAg1Ueaa+Is3w+hbZPjH7PS1ZnATgaPeOg930gJQU+plCO2ofkR87YU6E
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: OR23IxNe5E+m3QO+4g3nOCzhvRbNz77Bma425t3CjOJtUHvDfavmhp+guZ/KSJyEtYJniuimCZhbxnWDhuyPET28SbdwDYUl6xhfiFgr9jN/eVJoOeQzm9HrB5BpwGXz3eHL1dyKilCddTaWCtwSgtGPd1yM6WNU5Py7RtutlTZQwC6PLRtiLeW1f4DLTUpdMGMqwpWxXwTCbWA6iCCXjzYyPRyA0h7+wxlLMe7JMVNxS97hWmsGN6hO6gFdiAc2JOv9dy7UUnJqMkFIVrxDaapOJmm4q+gZ24jTMHvV3tZAwWphKcoHQIGHMlOCwuaHpAJBmQaZIbUCdc56J49OnWu+3cLt4yp0OcMgahGwbuA4/DYcl+DWqtSQth59FuCvZg3yKWK/GlPwx8OH540kyXZk5jQoI5/hMj72HPq02ylIrB5svR4/EkI1TujbHyjZsg+srK+rJj2X0krINN7lMkxiX91B52zIXVu4vZRvscgGwDIFZO2G8o3rOQY2fJwAytM2jMd1gWYamfkMDxggwgNnEVXhd4WDeCB2VZa1kVuo4XazvAbJwpBWBHmRrSvEM7yRSNq+4QoUVvHNEbf4kC/Bab4w1QjZQ0WyPAa/bze842tHGDgSC6+iscpZIanijh+SRNI3w1rI+QTmDMrbjgy65OsMh6hdRVsQOFbTWuF0Rt4sp6aH3QJaVwf9jT5Bj0LVAfbiJIbjriOWzfXjIA==
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR14MB4296.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 3138efc2-4c77-4057-09e6-08d9b44113c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2021 20:36:24.6574 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR14MB4520
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AUKaSoh026835
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

As I think I've already said, Emacs has a nice tutorial available to you on=
ce you install Emacs. It also has pretty extensive documentation that you c=
an get to multiple ways.

As for Emacspeak, all I can do is apologize for not spending the time to cr=
eate a getting started guide for the new user, even though I am an Emacs fa=
n boy.

--
Christopher (AKA CJ)
Chaltain at Outlook

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Be=
half Of Linux for blind general discussion
Sent: Tuesday, November 30, 2021 2:32 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: What is the easiest and most accessible editor?

Hi all,


I have been following this discussion for a bit and was wondering, and have=
 been doing so for a while, where do you go to learn Emacs?


Even worse is Emacsspeak, the user guide I can find out there is more=20
than 10 years old.


Isn't there a concise, easy to follow step-by-step guide out there some=20
ware?


I'd think those, so passionate about their chosen choice would make it=20
possible for the newbie to learn, Gentoo and Arch did it, why not Emacs=20
and Emacsspeak?


Warm regards,

Brandt Steenkamp

Sent from the Fedora machine, using Thunderbird

On 2021/11/30 19:45, Linux for blind general discussion wrote:
> Interesting. The problem is that email itself has several components=20
> that don't fit well into an editor window. Reading and writing emails=20
> for example fits into an editor style window just fine, but setting up=20
> email accounts, moving through folders and lists of messages,=20
> expanding and collapsing threads, etc just don't fit into that box=20
> very well.
>
> I also had a look at one point at the shell terminal. Whereas it's=20
> good to be able to edit the current command line, I found that=20
> pressing the up arrow key to put the previous command back on the=20
> screen to either repeat or modify didn't bring up the previous=20
> command, but instead put my cursor on the last line of the previous=20
> command's output. Shells need to be line edited, not screen edited,=20
> and that's where the whole thing fell flat, especially since as I=20
> recall, I was even able to accidentally overwrite command output=20
> because the whole screen is in an editable ... buffer I think they=20
> call it.
>
> Regarding the key sequences, x is a way to cross something out, x it=20
> out, cut it. C stands for copy, and I guess v got its paste=20
> functionality because it's right next to cut and copy. Not sure about=20
> that one. Still, it's better than some of the key combinations I find=20
> even in nano, control+w to find something for example, or even better=20
> is control+q, which is supposed to quit, but instead performs a=20
> backward search. What the ...? Emacs keys are even worse, since as I=20
> recall, finding something requires two key combinations, and if I=20
> remember correctly, neither includes an f for find or even an s for=20
> search. Emacs puts me in mind of the old days of a little program I=20
> used in school called Turbo Pascal. That horrible thing ... if I=20
> wanted to compile the program I had just written,-=A0 I still remember=20
> it - I had to press control+k and then d. Again, what the ...? I don't=20
> know ... I just did it ... because that's what the teacher told me I=20
> had to do in order to compile my program. Nothing in that key sequence=20
> could be thought of as compile or even build, well, maybe the d on the=20
> end of build. But that sure was a nightmare to have to remember that=20
> that's what that crazy combination of keys did. I can only imagine=20
> everything working that way, which was the experience I had when I=20
> looked at some Emacs documentation. But then I could be wrong, since=20
> the last time I even opened the application was probably 15 years ago,=20
> and I didn't even see the nice little help thingy at the bottom of the=20
> screen like what I got from Nano and Pico that I had used before it.=20
> At least in vim I was able to use the :help command to get me started,=20
> but even that was much more complicated than it needed to be,=20
> especially when I just wanted to cut something and paste it somewhere=20
> else in the same file. I do like its search and replace functionality=20
> though. %s/something/else/g if I remember correctly, just like in the=20
> sed command, will replace every occurrence of something with else.=20
> That said, I can just as easily run a find and replace, put something=20
> in the search field and else in the replace field, then tick the box=20
> that says replace all, and it's just as good, and doesn't even use=20
> more fingers, since the tab key is replacing the / key in this use case.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://na01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flistma=
n.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=3D04%7C01%7C%7C16d=
0d6b9aa2540dd02d008d9b4407ccf%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C=
637739011327577623%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2lu=
MzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=3DwXgLHgXIjM9W4X3sLITlY=
WHG8p4N9IbECb57%2B5vG178%3D&amp;reserved=3D0

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://na01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flistman.=
redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=3D04%7C01%7C%7C16d0d=
6b9aa2540dd02d008d9b4407ccf%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C63=
7739011327577623%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMz=
IiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=3DwXgLHgXIjM9W4X3sLITlYWH=
G8p4N9IbECb57%2B5vG178%3D&amp;reserved=3D0


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

