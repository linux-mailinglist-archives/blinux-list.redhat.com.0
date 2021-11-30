Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D237463D0E
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 18:43:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638294182;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GcdrKBSy1Ob69fl3MtvITOCxc2eKDOzPTHjUyVHRcxc=;
	b=aWuVJdyU2C58kuI+3A4I+eMgmFxvov1LcuOO4YgqTh1V4hzObeo1z2MgP3sSGau98VGSs3
	fK6EpXgsatbQ+yedpFdQGdY/8dx9Nx8infLXImW7n6YORutmOeRlCdzmS12wgaCft3dSpF
	kiZyGlHez57f9vT1KTfeNnzGzlnmnSw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-552-I3b09IvFPZ2Lh73yWl40rQ-1; Tue, 30 Nov 2021 12:43:00 -0500
X-MC-Unique: I3b09IvFPZ2Lh73yWl40rQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8522A1927801;
	Tue, 30 Nov 2021 17:42:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B96B55D740;
	Tue, 30 Nov 2021 17:42:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0BC931809C88;
	Tue, 30 Nov 2021 17:42:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUHgGxV011179 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 12:42:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8F5AE1121319; Tue, 30 Nov 2021 17:42:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A1901121315
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:42:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BEBB7803D77
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:42:13 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
	(mail-dm6nam12olkn2102.outbound.protection.outlook.com [40.92.22.102])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-344-IcIkU0U5Plyi_0-lAjZXbw-1; Tue, 30 Nov 2021 12:42:11 -0500
X-MC-Unique: IcIkU0U5Plyi_0-lAjZXbw-1
Received: from PH0PR14MB4296.namprd14.prod.outlook.com (2603:10b6:510:29::21)
	by PH0PR14MB4263.namprd14.prod.outlook.com (2603:10b6:510:29::19)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23;
	Tue, 30 Nov 2021 17:42:10 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::50cf:b04a:7dd3:b581]) by
	PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::50cf:b04a:7dd3:b581%7]) with mapi id 15.20.4755.011;
	Tue, 30 Nov 2021 17:42:10 +0000
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: What is the easiest and most accessible editor?
Thread-Topic: What is the easiest and most accessible editor?
Thread-Index: AQHX5VdoRbix9fGhXE6qTZuiU9GhqawbBkUAgAAIgoCAAAjmAIAAD+EAgAAOnICAAIOcAIAAaHIAgAAq66CAAApZAIAAAJsw
Date: Tue, 30 Nov 2021 17:42:10 +0000
Message-ID: <PH0PR14MB42968363E7358E3FDAB6A32DC8679@PH0PR14MB4296.namprd14.prod.outlook.com>
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
In-Reply-To: <CAO2sX33Ek3Vo++4TGSxSnphQWRorYkz9x8325Ap83pkJwmrLXg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [8qf8T/dJevqIT3nScdSr+m3TYj2+406z]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9da5070c-77e8-43b5-f39e-08d9b428bc86
x-ms-traffictypediagnostic: PH0PR14MB4263:
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: BfltFrOrKweP2stkfj1rSnJded2vS1LCp3g8Aee7wRclCngkG1hDZXl+242F2VtcSD4sEas3nbEWZ3D3MB6mxbC9cyAmy4pzh/OHaSeV8UYTSGtVdohb5ita3AIuybXz6YbeUXp13qvvCf84YJxJjlZB2fKKoKvAR2t6ris1OtBS79OtnheGvUuopUvQd4WGmnVNpA3iLC73OhXjrxrGX/bFfugSrg6wyRQkZt0dVDUdvCyHT1OCp9bBn16T2DI2y1Fn4riBDg4hCL4PtEVgfiE0Gnatn9EJMreqh6mAlhALEgh5OP4XiImXBOAjmqdZ99JHv6ITUky4tg95TZL3Oc/OyYUnpNdsvkfFkc9VtAR74NOf0PTYc0++uGa3n2/rhX7TnTc0rbFVqRRkgCAA/ULKcKq40bKD14jJmQJH9hhfbWqV0HW1qWU5T0DBfHZQPyR5yNJLWSmW7Oe6CDJVuBhdE30d//W1EKEBQhjOumXY9296A5sSMoF/ckm/QFhvTilsL3i6g/wirTwRAkM1PJGM4Gxz3wqRNONWcMutPEV1K/VK4K4Cy4E0xouur30LzC5Lkyv9S7xtQcXvWCC2gqczKvhImfJ8BcXumjoq7bAob3onpl2cAapTef/mKWEh
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: hbrHgKCbAR404eEfmEB017qLlrm8UqbuMfXuhllT/7l+mdmbxTb06Z94YSH04Anm4IYw3MuB1fa7nVsGAlk5P6qL14RJp+zq3OzSbtAaCMptXZzez9NDLZLTbH+ixQbGjgtVR1f5AfCmGjHouI+8lwTS3Zd5GxLrn84OjxT3JvJLrF8hOt4meCsm22UR87hDHz4CrgOAhCXn2brkJltqKuTaw1sIMZeVrFCR2IUu0TE3JbncDWtE4LAD9O+7s6wX53VljvDKHJPNJXTmAwi25ox9+2wJm3a/RKpqyj5487nxldiqJ62eTQFJ5i51aRcD9s2r8BThTDhs9y5gmfDXeAY9gQ4G1q+MGvKKF8yeFOMUNfXlpf0Y53fUqW8crLyXGhu106LVqcMuSnUozlIrN1/o6SKukCl+oYUzmTs00MuJ1xc5Z4wsO7QRENKcXsS7n18ozNqgQQm/UkIHroOrKeHq+cksX+QGPR++j+KhbBuawt+qrNHSTHyx648EtxQu6Ob4H2soL2caKM0d8xM06NtKPRutdrR2vf3YSq5FZoFG5PBt52iEUA5ofMIXbuDMcdq7MrhmPfJ7W5qjI6XKaQm2XK0Hg2a5r4rBpybRHrWGkWMpbquhRXbEnjFdHCzrDD9DePuUjExDlxxBum7p8J4Eh8E+c+nml4l6xCDpsgvHc1RgWaxqoBk+zwkKQaE1GE15e6u/AVLvqPq68I8b6g==
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR14MB4296.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 9da5070c-77e8-43b5-f39e-08d9b428bc86
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2021 17:42:10.3660 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR14MB4263
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AUHgGxV011179
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I agree, but in defense of those people who get pretty passionate about the editor they use, remember they frequently put a lot of thought into their choice and tried a lot of other options. It's also something that they could spend quite a bit of time in. Of course, this doesn't justify anyone putting someone else down for making a choice different then the one they made.

--
Christopher (AKA CJ)
Chaltain at Outlook

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
Sent: Tuesday, November 30, 2021 11:38 AM
To: blinux-list@redhat.com
Subject: Re: What is the easiest and most accessible editor?

Oh, I agree this thread has remained quite civil. Doesn't change the fact that the Internet has a disturbing number of people who get offended by the idea of people using different tools or liking different things to the point of open hostility... or that such attitudes are rather silly. If all internet discussions were half as civil as this one has been... well, I suspect many of society's problems would evaporate due to people actually listening to one another, respecting each other's opinions, and being willing to work together even when opinions irrelevant to the common goal differ.

I feel like I should link this back to the text editor discussion...
but honestly, I can't really think of anything that hasn't already been said.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://na01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flistman.redhat.com%2Fmailman%2Flistinfo%2Fblinux-list&amp;data=04%7C01%7C%7Cac0a6907e15a4ae3df8908d9b428412e%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637738907259322693%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=04pX7vCLOV5LN3Yl5mJH%2B9bMZJhYZVgEpXhL4LAA3Hw%3D&amp;reserved=0


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

