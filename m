Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D69F1377249
	for <lists+blinux-list@lfdr.de>; Sat,  8 May 2021 16:05:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620482706;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3Mj9Sp2DJwV+JiGkBkBZF4Xw9hp2FFlo5vQ54MvnM1Y=;
	b=HS1czkK0y2q/pFKWpkMcFyRU5pgWVwsu483CFualj4xaAEASe212fqRS8m+ZL1/AXtXyk/
	7zFCPKrZqy7wx7OmNwfLLjnZgxtWBvDD+13NuwH6ylmtGzb2E5Eo0lO1vIxkvAwXOC0SFC
	HiqoHPjuC7oHjNiNTcTx7118X/EEeJs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-269-zyR3yDGTMI2bUMs3g8Lh4w-1; Sat, 08 May 2021 10:05:04 -0400
X-MC-Unique: zyR3yDGTMI2bUMs3g8Lh4w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3ADBE107ACC7;
	Sat,  8 May 2021 14:04:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FB456062F;
	Sat,  8 May 2021 14:04:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C019A55355;
	Sat,  8 May 2021 14:04:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 148E4gB3000914 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 8 May 2021 10:04:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E74DE4368A; Sat,  8 May 2021 14:04:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DFB37107134
	for <blinux-list@redhat.com>; Sat,  8 May 2021 14:04:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5FFF480D0E0
	for <blinux-list@redhat.com>; Sat,  8 May 2021 14:04:39 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
	(mail-dm6nam11olkn2088.outbound.protection.outlook.com [40.92.19.88])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-205-vJlU6AcoM6y-Adv0bkNu0g-1; Sat, 08 May 2021 10:04:37 -0400
X-MC-Unique: vJlU6AcoM6y-Adv0bkNu0g-1
Received: from DM6NAM11FT055.eop-nam11.prod.protection.outlook.com
	(2a01:111:e400:fc4d::47) by
	DM6NAM11HT165.eop-nam11.prod.protection.outlook.com
	(2a01:111:e400:fc4d::427) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25;
	Sat, 8 May 2021 14:04:35 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	(2a01:111:e400:fc4d::41) by DM6NAM11FT055.mail.protection.outlook.com
	(2a01:111:e400:fc4d::359) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25 via
	Frontend Transport; Sat, 8 May 2021 14:04:35 +0000
Received: from PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::d093:57ee:eee8:ab8b]) by
	PH0PR14MB4296.namprd14.prod.outlook.com
	([fe80::d093:57ee:eee8:ab8b%3]) with mapi id 15.20.4108.031;
	Sat, 8 May 2021 14:04:35 +0000
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: Fedora 34- Orca works on logon screen but not after signed in
Thread-Topic: Fedora 34- Orca works on logon screen but not after signed in
Thread-Index: AQHXQ7x2yr2mAxCeakCWRhISX+1azqrZnpOg
Date: Sat, 8 May 2021 14:04:35 +0000
Message-ID: <PH0PR14MB4296F7065AF04FE6E34F7F36C8569@PH0PR14MB4296.namprd14.prod.outlook.com>
References: <BN6PR19MB1443FC8D1B3AC939EFC2B5A5A2569@BN6PR19MB1443.namprd19.prod.outlook.com>
In-Reply-To: <BN6PR19MB1443FC8D1B3AC939EFC2B5A5A2569@BN6PR19MB1443.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:C97072235334ECD79F56E70A0D047BEF79BBF9F4A12CA651D7846BE8198E03E6;
	UpperCasedChecksum:BDE891337117B1AC2E0C6D5E2CF02B9ECBF407CB1B6B4AA9BAE6BE5690E71810;
	SizeAsReceived:6884; Count:43
x-tmn: [3l2yQwmpxeErV9QumQHII7eFSjIPv3Y8]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 028504c7-5d97-4e12-ff85-08d9122a3628
x-ms-traffictypediagnostic: DM6NAM11HT165:
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: m57aTivNZLm1vnjXSwJco8WJLDlfKcUaIEwIgGT6EZevOhwcS2Nx5dZKnljFS1xYeFhQwW/62xx8eeiGNhexPG69wblqVyxMiKDFxAO7G/lxVuBepfdzE7sbcowFMTbbm7HmOi6SDQsf1OUzAbdwqVFk2cjh5GcjtdKO2u4eajrUoN1PG1zsko7TqdCliGG4/5ieYcuK35T7lvn/OgT9Hp6LhZoUKGaRoOMQ2h6dn167vmLdEmiSMv1nK/+M/TD/iTrgkKb8dMNB14oo/cSD4yRur8og9jPFnG3VdKbjm31ljFxbJ0C0U3ChiShKXkWIHpSquBXKgDu2NLxJHSZobu6jbbAQXbxkGiAeU3vSEYpLE6OxmRPjR0vbFUQB+9PUyI1j8vW69hHpj//HE0P/3CDfWNQOYVrxJGCVI+8LeSA3RaQ7JST3xgT5hl+meArOWyI0wd19jJ6NgTPSfaIyEwry6QJa7Y5KrE2yMqIwFYQ=
x-ms-exchange-antispam-messagedata: 54E2KQwFee+2Ar9NGfe7hMONsDUudBjHtEJjNdH/dR+YmiIzgcK1OfIGYosYqd5dJ0/ZVHnruDAm0fLGjm970lBR/DXb4WWGxNYsL/tP2c3acL7ED9dh56S/QSfX1HDlW+y6Z0hSHp/7y9CKqpFeWw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT055.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 028504c7-5d97-4e12-ff85-08d9122a3628
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2021 14:04:35.5302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM11HT165
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 148E4gB3000914
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I can't help much, but on Linux the Windows key is called the Super key.

--
Christopher (AKA CJ)
Chaltain at Outlook

-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On Behalf Of Linux for blind general discussion
Sent: Friday, May 7, 2021 10:55 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Fedora 34- Orca works on logon screen but not after signed in

Hello.  I just installed Fedora 34 Mate spen on my laptop.  I got Orca started on the logon screen by pressing Windows Alt S.  I think the Windows key is called something else on Linux, but I don't remember what it is.  I put my password in for my user account and press Enter.  I don't hear Orca come up after I am signed in, so I pressed Windows Alt S again.  I do not hear anything from Orca.  Just in case Windows Alt S does not work after sign in, I pressed Alt F2.  Type Orca and press Enter.  I still do not hear anything from Orca.  Does this have something to do with my user account not having permission to access the sound device?  If so, is there a group I can ad the user account to? If it is not a permission issue, what else would it be?
Thanks.


Get Outlook for Android<https://aka.ms/AAb9ysg> _______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

