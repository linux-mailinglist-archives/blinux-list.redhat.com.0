Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BD24DCE7B
	for <lists+blinux-list@lfdr.de>; Thu, 17 Mar 2022 20:10:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647544245;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6Ub+LULcU6jv8qfwTV8GNIpF8w442fP4qHg4yPNIt0c=;
	b=aNeu0CqE1O6TuI/YE0NcRJYhSPoFOBbNSL7xEpH94shL+WGjmUc1gYhJ/+wq+mUtsltxV5
	z7wLxP8w8SjDfxJHUiSIa5UXxll6i7zFgGjyslmA4XOq6gXEKWK7Tz7H64wj195RJfKMFW
	7G6f7b4Pg+YVPm0OFZ29ljxyQdwayBs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-5-wjuFCpMAPWGyvPY-9ijIqA-1; Thu, 17 Mar 2022 15:10:42 -0400
X-MC-Unique: wjuFCpMAPWGyvPY-9ijIqA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DAF191066559;
	Thu, 17 Mar 2022 19:10:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E7C4A469A4A;
	Thu, 17 Mar 2022 19:10:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1DA4E193F6EC;
	Thu, 17 Mar 2022 19:10:32 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 17 Mar 2022 14:10:26 -0500
To: Didier Spaier <didier@slint.fr>
Subject: Re: getting started with Liblouis
References: <6df9e5ca-9db1-3155-3afe-24b47cd7c183.ref@verizon.net>
 <mailman.2021.1647388814.111205.blinux-list@redhat.com>
 <mailman.2147.1647415850.111205.blinux-list@redhat.com>
 <mailman.2542.1647450204.111203.blinux-list@redhat.com>
 <mailman.2599.1647452270.111210.blinux-list@redhat.com>
 <mailman.2537.1647459655.111209.blinux-list@redhat.com>
 <81ce583f-b364-df9e-a3e7-64b96d60dcdb@slint.fr>
MIME-Version: 1.0
In-Reply-To: <81ce583f-b364-df9e-a3e7-64b96d60dcdb@slint.fr>
Message-ID: <mailman.2771.1647544231.111204.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Do you have the latest liblouis release? It came out about a week ago. I ca=
n forward the release announcement. It includes all URLs.

John

On Thu, Mar 17, 2022 at 02:57:03PM +0100, Didier Spaier wrote:
> Hi Al and All,
>=20
> I have tried to build liblouisxml pulled from git master (Debian source f=
iles).
>=20
> Bad news: build failed on Slint64-14.2.1, some of the components being to=
o old.
>=20
> Good news: build succeeded on Slackware64-15.0 (building box for the upco=
ming
> slint64-15.0), so a package for Slint64-15.0 is ready.
>=20
> Unfortunately it can't be used on Slint64-14.2.1 as the programs lbx_devo=
nly
> and, more importantly xml2brl can't run because there the glibc version i=
s not
> the same as on 15.0
>=20
> So, please be patient: this stuff (included all dependencies) will be shi=
pped in
> Slint 64-15.0.
>=20
> Thanks to John for liblouisxml and to Samuel to have maintained it during=
 the
> last 11 years.
>=20
> Cheers,
> Didier
> --
> Didier Spaier
> Slint maintainer
>=20
> Le 16/03/2022 =E0 20:40, Linux for blind general discussion a =E9crit=A0:
> > Hi, Didier.=A0 Thanks for that information.=A0 Yes, that seems to be wh=
at I need, if
> > possible along with antiword and a couple of items the README mentions =
that I
> > forget.=A0 If those other items are more than you want to put in Slint,=
 then I
> > presume I'll get them by way of the other README information.
> >=20
> >=20
> > Al
> >=20
> >=20
> > On 3/16/22 13:37, Linux for blind general discussion wrote:
> >> Hi Al,
> >>
> >> It appears that liblouis xml ins maintained for Debian by Samuel Thiba=
ult so
> >> Debian based distributions get it too.
> >>
> >> I will build a Slint package for Slint using the same source files if =
you need
> >> that.
> >>
> >> But please look first at this README:
> >> https://salsa.debian.org/a11y-team/liblouisxml/-/blob/master/README
> >>
> >> and confirm or infirm that it is what you are looking for.
> >>
> >> Cheers,
> >> Didier
> >> --=20
> >> Didier Spaier
> >> Slint maintainer.
> >>
> >> Le 16/03/2022 =E0 18:03, Linux for blind general discussion a =E9crit=
=A0:
> >>> Thanks, Jeff.=A0 I'm using Slint.=A0 I didn't see either of the progr=
ams you
> >>> mention.=A0 Maybe there's something else.
> >>>
> >>>
> >>> Best!
> >>>
> >>> Al
> >>>
> >>>
> >>> On 3/16/22 03:30, Linux for blind general discussion wrote:
> >>>> On Tue, 15 Mar 2022, Linux for blind general discussion wrote:
> >>>>
> >>>>> I'm trying to find out how to use Liblouis to translate documents f=
rom print
> >>>>> to Braille.=A0 Specifically, my wife would like me to find out how =
to translate
> >>>>> Russian documents into Braille ones.=A0 At the moment, though, I ha=
ven't yet
> >>>>> learned a command to run for translating anything:=A0 the Liblouis
> >>>>> documentation looks to have a lot of useful material, but I could f=
ind
> >>>>> nothing about running a command, with whatever arguments and option=
s I might
> >>>>> need, to create a Braille output file from a print input file.
> >>>> In Debian, I see liblouis-bin and liblouisxml-bin packages which can=
 probably
> >>>> help you.=A0 Other distributions probably have something similar.
> >>>>
> >>>>> I read about a command called file2brl, apparently part of a progra=
m called
> >>>>> Liblouisutdml, but that program's not on my system even though Libl=
ouis
> >>>>> itself is.
> >>>> Apparently, UTDML is unified tactile document markup language, whcih=
 is
> >>>> presumably used for maps, diagrams, etc.=A0 This is probably not wha=
t you need.
> >>>>
> >>>> HTH,
> >>>> Geoff.
> >>>> _______________________________________________
> >>>> Blinux-list mailing list
> >>>> Blinux-list@redhat.com
> >>>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >=20
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list

--=20
John J. Boyer
Email: john.boyer@abilitiessoft.org
website: http://www.abilitiessoft.org
Status: Company dissolved but website and email addresses  live.
Location: Madison, Wisconsin, USA
Mission: developing assistive technology software and providing STEM servic=
es=20
        that are available at no cost


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

