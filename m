Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D19463E63
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 20:04:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638299068;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=O5wC17XHDShqA7YKxInBIXyOvyaLbBqiKCHneQ01LKw=;
	b=UZ4eF2mipb1+wuGVBriq0F+D2ptuALsmqGRe1A0tycOCOK9/y3R7QxTte7HPIL/B+Q6XBv
	4/XA/ag7R8/54kH4xTGc5me2pnd1VhCgn9fY0sj7AmDW2KOYf7gPtgXXF4tWPkTo/y6Q5C
	8MR3r/ErBSQIaNn2z5icfcWbaUomMy0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-50-YMokNLuuMZe7KEFX7IzXkg-1; Tue, 30 Nov 2021 14:04:25 -0500
X-MC-Unique: YMokNLuuMZe7KEFX7IzXkg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9D3391937FD0;
	Tue, 30 Nov 2021 19:04:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7724B5D9DE;
	Tue, 30 Nov 2021 19:04:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 776774A700;
	Tue, 30 Nov 2021 19:04:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUJ49O6017726 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 14:04:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D19DB40CFD10; Tue, 30 Nov 2021 19:04:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB58E40CFD0F
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 19:04:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ADFB4181944D
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 19:04:09 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
	(mail-bn8nam12olkn2033.outbound.protection.outlook.com [40.92.21.33])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-67-d1l30iO-NcGDNEpy61BnMQ-1; Tue, 30 Nov 2021 14:04:07 -0500
X-MC-Unique: d1l30iO-NcGDNEpy61BnMQ-1
Received: from PH0PR14MB4296.namprd14.prod.outlook.com (2603:10b6:510:29::21)
	by PH0PR14MB4343.namprd14.prod.outlook.com (2603:10b6:510:26::9) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.11;
	Tue, 30 Nov 2021 19:04:06 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::50cf:b04a:7dd3:b581]) by
	PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::50cf:b04a:7dd3:b581%7]) with mapi id 15.20.4755.011;
	Tue, 30 Nov 2021 19:04:06 +0000
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: What is the easiest and most accessible editor?
Thread-Topic: What is the easiest and most accessible editor?
Thread-Index: AQHX5VdoRbix9fGhXE6qTZuiU9GhqawbBkUAgAAIgoCAAAjmAIAAD+EAgAAOnICAAIOcAIAAaHIAgAAq66CAAApZAIAAEjSAgAAD4wCAAADhgIAAALdA
Date: Tue, 30 Nov 2021 19:04:06 +0000
Message-ID: <PH0PR14MB42965106251755748603AD60C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
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
	<bf559c03-d9f2-060d-eb5a-4f2341136b35@verizon.net>
	<CAGJxbF6W=0aSw-hAYKdrUVirRHKgLGA_PGfBE2fg7uFNmqtDnA@mail.gmail.com>
In-Reply-To: <CAGJxbF6W=0aSw-hAYKdrUVirRHKgLGA_PGfBE2fg7uFNmqtDnA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [W8MjfMQN/5TMTVkf3UqqNU4YiENSYcaZ]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a1fd3174-c851-4a2d-9838-08d9b4342ec0
x-ms-traffictypediagnostic: PH0PR14MB4343:
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: PW0UNnr9QwmkF6GuU8xUeFyJLHCGsBwGj8PYz25ecepuID4DbHjM4/oBNMvd9ebuQFMTMaVeEMn92VAwoqc4qfZ3yPb5v+HP+v95U8YzZTKjEDIuV+YWBr4Udt/xIcdlFD+smOgUDLjWXcn/2Jrl2nke60hR9NTK7VR6i1q+S/2j4PwrtiuNIa2Z7vgE/XSXtU+ar4Vh/d8ZW8SCPRT1cDrY6WdKjVzqUP04y+fHFID1bCdWtdAy4pg00E9rBhHnwnDQXLIejQcW8QHIU/JTzvyVkaRaADGtzo6SJ0xMfch8xwodGCY3XSMlAizaKV0AHWInbApwo3pxG5B/juPEylv8jchY4CqRo+eHQf39Ef2qxsD0G3Ry1UL6zrAwWo8kDIYH+SJFG748QcgTEvOl01ftmQ1k3w2csEDwLg1DO7hVh0r31EWa73gmVxqfi+2A8jsVmL95JtUoTX2y4rm53FooJfO63C3xm5dNm4hdtG/35tuS+YfGkGgkFydexevOI9Woo73iqMaZO8TkMVjriynZtiVmPG6YVpGjMPlsVLtv1kz9BhFUNB19DsUv52JXhBrXxeY2HE/LXYv0of7PKIl6pwdJfSziecY0MmWjQfBh8Csb1Ko9zKujqJxh+XbERHTSLiSSwW9yWaC5uLSSO2EXcixdzy6OapCxdmiXXJ4=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: ttKZrxJxe32AfNC9YOF5w7O/z/iMGRqGOflL7C6iHgoHkbs0SsUdXJD15jBSA6r7y5IRcbQiyNt72DpW5fOrF4OdwezctVnT+6vZGdogfHuC0chcpG47jvMksSIXgcV8x7L9prlVENpiZ1ODhef86LNeFr3vD3DiiZr7MssYSX1NRWi/2RcyzEZVlUMCtGesuCgijR4UKuWXEe+Nlt9/SvJiLOHe4b2h5mlpS3bMaR73fsh2K8I8G86IKpnWj4+fs4Wvd01yGrwW77KJr/qQ8me64bp+yS469aJEixqAk5MqSU5qsrg9Rm8drpwit8vXrUBfpxckJf/5mJsRLg/MDpqM0iCZtQRi1ZfJ26xgcY6soTq+0JqevpmhBHLOWxljDRI25IpXS2ef+jTASQlRL//+DYom9gSJCNmpJUag/4i1FuhaTDpB5NaaXyWH1BzUx7/eIhwiEFg+1XvxnxEumfNdeEOvL9DOOzMEiVSXL2FBM76axY1MT90DpRNzctBrhY6xTXba7zZ8z7Cpr/vMglUWw0A2EBjdkmVrURJQy/OV7u3AtfoE2kD6jrPceS1VI+Bi/VcY2+C/fhpifcOadh6CIUA8f02c8lZSikiggJuugnSuC11UPcNKUXu/XHGkucg8LIkkNfxMeaLXLOBrHedCdOIZQC/ngic8P9jzdbykqAbnPsgUciBZiOfPIFdr0kA9jA7Y9f4G+dIPZChEgg==
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR14MB4296.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: a1fd3174-c851-4a2d-9838-08d9b4342ec0
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2021 19:04:06.4621 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR14MB4343
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AUJ49O6017726
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
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

And does the right alt key work as expected outside of Emacs? I'm just guessing here, but this may have to do more with your keyboard or language setting than anything in Emacs.

--
Christopher (AKA CJ)
Chaltain at Outlook

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
Sent: Tuesday, November 30, 2021 1:01 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: What is the easiest and most accessible editor?

What does you right alt key do instead? When you press Right alt + x, what happens?
Devin Prater
r.d.t.prater@gmail.com




On Tue, Nov 30, 2021 at 12:59 PM Linux for blind general discussion < blinux-list@redhat.com> wrote:

> Greetings!
>
>
> I started out with Emacs back in 2005 or so, but until lately have 
> used Vim exclusively.  I'm once again trying to learn Emacs, partly 
> because of some of its extras and partly because I'm curious about how 
> Emacspeak is to use.
>
>
> In any event, maybe an Emacs user can tell me how to get the right alt 
> key to work the same as the left one.  I expect that this would make 
> it easier to use some of the key combinations.
>
>
> Thanks for any help.
>
>
> Al
>
>
> On 11/30/21 13:43, Linux for blind general discussion wrote:
> > In all fairness, a pair of scissors, probably the most common tool 
> > for cutting paper, kind of looks like the letter X, but honestly 
> > ctrl+x for cut and ctrl+v for paste most likely came about because 
> > ctrl+C is copy and x, c, and v are adjacent on qwerty keyboards and 
> > there's a certain sense to putting related functions together... 
> > Then again, even the mnemonic keystrokes probably only work as such 
> > in the language of the one who picked them and maybe a few closely 
> > related languages if you're lucky... and that we even call these 
> > functions cut and paste is arguably an artifact of a by gone era, 
> > similar to how often GUIs use floppy discs as the save icon or 
> > old-fashioned microphones for record icons.
> >
> > I will admit, I often find myself trying to use nano's key bindings 
> > when typing stuff in Firefox... and if I had the programming chops 
> > to write my own web browser, I'd probably have the Universal GUI 
> > keybindings as the default when editing text if I was going to 
> > release it, but would want to have the option to use nano 
> > keybindings if not just embed a nano "window" in the active text box.
> >
> > Though, on the subject of comparing emacs to a desktop environment...
> > and perhaps it is more accurate to call emacs a TUI DE than a text 
> > editor, as a general rule, those applications another user mentions 
> > as things you'd expect a desktop environment to be bundled with are 
> > completely out of the way when not in use, can be ignored or removed 
> > if you don't use them, and can be replaced with other applications 
> > if you so choose. From the sounds of it, emacs is less a case of 
> > bundling an editor with other applications and the suite having a 
> > unified look and feel and more a case of mashing several 
> > applications together and if you just want a standalone editor, 
> > there's no way of uninstalling the other stuff, though admittedly, 
> > that's speaking from an outsider perspective.
> >
> > If nothing else, it sounds like emacs runs contrary to the "do one 
> > thing and do it well" and modularity aspects of the Unix philosophy.
> >
> > Though, to add another text-mode editor to the pile, there's also 
> > e3, who's two main advertised features are small size(Aptitude lists 
> > uncompressed size at 72K compared to nano's 2833k) and multiple 
> > executables that each duplicate the keybindings of a different text 
> > editor(including emacs, vi, pico, and nedit).
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flis
> > tman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%
> > 7C%7Cf67ee569b35846a723d708d9b433c744%7C84df9e7fe9f640afb435aaaaaaaa
> > aaaa%7C1%7C0%7C637738956741384890%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC
> > 4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;
> > sdata=MBfSbHayoTiMt%2BKudnMt%2F1YvKXrQJg8t09cQjv%2FCjrg%3D&amp;reser
> > ved=0
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistm
> an.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7
> Cf67ee569b35846a723d708d9b433c744%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7
> C1%7C0%7C637738956741384890%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMD
> AiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=MBfS
> bHayoTiMt%2BKudnMt%2F1YvKXrQJg8t09cQjv%2FCjrg%3D&amp;reserved=0
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7Cf67ee569b35846a723d708d9b433c744%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637738956741384890%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=MBfSbHayoTiMt%2BKudnMt%2F1YvKXrQJg8t09cQjv%2FCjrg%3D&amp;reserved=0


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

