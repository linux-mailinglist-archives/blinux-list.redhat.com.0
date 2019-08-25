Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DAA9C640
	for <lists+blinux-list@lfdr.de>; Sun, 25 Aug 2019 23:22:04 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id A4C6110F23E3;
	Sun, 25 Aug 2019 21:22:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1C7FC60A35;
	Sun, 25 Aug 2019 21:22:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 717F72551B;
	Sun, 25 Aug 2019 21:22:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
	[10.5.11.15])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7PLLwLu010750 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Aug 2019 17:21:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AC1B65D704; Sun, 25 Aug 2019 21:21:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx19.extmail.prod.ext.phx2.redhat.com
	[10.5.110.48])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A767B5D6D0
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 21:21:56 +0000 (UTC)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com
	[209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 6FA71307D91E
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 21:21:54 +0000 (UTC)
Received: by mail-pg1-f180.google.com with SMTP id n190so9209551pgn.0
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 14:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=H7R3yka8oaebeb17ZydecLrBkS0R50cxrXzq+FF3HNo=;
	b=pYatmjhG1RS6LK7BHXQN1CmENRejMgbi2KbqWdN7u0V44drWo11uu/T51KXpS9TGAv
	T+2koBqYdPYnFeKqKVSgWaw4OI2NZILWb8TYbBSyAIIOPYJTFZbrCjbJ/duQpvvaQM26
	WucfWb5hEee+lYcZId9EyzOMdTu22aZhkxHKd3Qm1OEIZCjTM/Ug/WD+Cu+r25kn4ReN
	+/ZFCD912kMa/u4JIHfZ1gG+bP/jt5UemfmuH3k6fbvavsdzLj0Rq43hpzml5ZXdQbLb
	kZ66Gapis4EwyGM1/QQvtKUGJyvDje5D1vSKPmZr0z7/fJE/shHRAUI4yNVvlx3GgTGH
	o2Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=H7R3yka8oaebeb17ZydecLrBkS0R50cxrXzq+FF3HNo=;
	b=qOmtFCLjZ7pvVwDhp19f9NaYslWb9xGY/nhPePnrlBj2mNFPTcN/CZ9Ig7HGoBUV1G
	yYmHUHYKfrUBcrkSIpU17/YX+m+UxaF1hHBuQkyTvFmLXj3n5dmYGGxz5AGuCb3mwlzc
	2MfenyC36beUmdantulvCRhUC4k9x0/Cf/T8BQ7J2UX7Nq9QNLAkSecwwcTFHD33tbZa
	9fqXtiSFouCEUMvSn4ymFAzW2WCPGXkS3a/4BqpLzhtbDKEY9Jtzt5884Um7qc1MeUfb
	Y2yPgukoglhjaok5ts0J5IdSU6STiTOwVasU0ysTEGKxef7YouXJBYG8C5Odtx4H3FPx
	9IDw==
X-Gm-Message-State: APjAAAWHfDXjPM1gzQUvOtbCTg5kKJ7ceCXG6g8Nbej1v++rd6PCoMgj
	TwPvnz3ZbjQpwWrCmTXdD4Q2Talk
X-Google-Smtp-Source: APXvYqzL4wgGwgqN8CBANzDlFmLwV8D/iOhvujCKpsxY10I0ICVIqz9XvLWGnENMJUVW+PfNT1tobA==
X-Received: by 2002:a17:90a:ac0a:: with SMTP id
	o10mr3891303pjq.143.1566768113410; 
	Sun, 25 Aug 2019 14:21:53 -0700 (PDT)
Received: from [192.168.1.131] ([67.230.224.68])
	by smtp.gmail.com with ESMTPSA id
	f205sm11634531pfa.161.2019.08.25.14.21.52
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Aug 2019 14:21:52 -0700 (PDT)
Message-ID: <20190825.212134.847.19@[192.168.1.131]>
To: blinux-list@redhat.com
Subject: Re: amazon?
Date: Sun, 25 Aug 2019 16:21:34 -0500
MIME-Version: 1.0
In-Reply-To: <74ebe647-3c78-b87d-c7a3-aa65d2d688d1@gmail.com>
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
	<Pine.LNX.4.64.1908241501480.31524@server2.shellworld.net>
	<251aee8d-1527-b391-a37e-e4fbf6799996@gmail.com>
	<alpine.NEB.2.21.1908241555430.22902@panix1.panix.com>
	<7f8743f3-bddf-6807-b2bf-0e7443c9c322@gmail.com>
	<Pine.LNX.4.64.1908250041020.12504@server2.shellworld.net>
	<6acc536b-99c9-21f7-1d40-be4d10abab70@GMAIL.COM>
	<Pine.LNX.4.64.1908251207060.2365@server2.shellworld.net>
	<a1ef7648-72f7-8fc7-e5b5-142187a91cc0@GMAIL.COM>
	<74ebe647-3c78-b87d-c7a3-aa65d2d688d1@gmail.com>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.48]);
	Sun, 25 Aug 2019 21:21:54 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.48]);
	Sun, 25 Aug 2019 21:21:54 +0000 (UTC) for IP:'209.85.215.180'
	DOMAIN:'mail-pg1-f180.google.com'
	HELO:'mail-pg1-f180.google.com' FROM:'captinlogic@gmail.com'
	RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.215.180 mail-pg1-f180.google.com 209.85.215.180
	mail-pg1-f180.google.com <captinlogic@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.48
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x7PLLwLu010750
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
Content-Type: multipart/mixed; boundary="===============3372122937429527233=="
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.66]); Sun, 25 Aug 2019 21:22:03 +0000 (UTC)

--===============3372122937429527233==
Content-Type: text/plain
Content-Transfer-Encoding: 8bit

The problem is most of us don't have money to hire lawyers. You'd be amazed how many people are screwed over, shoved aside and ignored because they lack the money, connections and clout to do anything. Companies aren't going to listen to a few, or even a few hundred customers, unless there's a clear advantage for them. That's why a lot of these complaints never go anywhere.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Sun, 25 Aug 2019 16:18:37 -0500
Subject: Re: amazon?

> I agree litigation should be a final step, but there are also certain 
sections of the blindness community who don't think law suits should 
ever be used, and IMHO, this is just another extreme that should be 
avoided. If a company isn't following the law, and nothing else is 
working, then law suits are a perfectly reasonable tool.


-- 
Christopher (CJ)
Chaltain at Gmail


On 8/25/19 11:35 AM, Linux for blind general discussion wrote:
> Agreedd, I brought up the legal beating over the head because there's 
> certain sections of a blind community that have a reputation for 
> reacing for a lawsuit first without actually trying, or trying and 
> publically disclosing at least, to resolve issues. It's the same 
> community who, sterotypically, expect to have things fixed 
> /instantly/. Which is BS, it takes time to implement things. It's a 
> whole other debate over what's a reasonable length of time, 
> but....let's say the 'click here for a minimal site' was already 
> in....I'd very, very much like that.
>
> Whoever it was who said litigation's the only way to get change, no, 
> it isn't. Try reaching out to companies with well thought out, easy to 
> understand points, such as...as an example off the top of my head
>
> I believe Amazon should make their sites less cluttered because 
> reasons 1, 2,3 and 4, and this will benefit everyone because X Y Z.
>
> The issue is.....disabled people are still a tiny, tiny niche. If it's 
> presented right to Amazon as a good thing for /everyone/, Amazon will 
> do it because everybody wins and it's good PR, not just with a 
> minority of people however.
>
> On 25/08/2019 17:13, Linux for blind general discussion wrote:
>> I agree with you entirely.  Amazon should just do this because it is 
>> good business.  Want a simple path to using amazon?  go here...which 
>> used to be the case.  Prefer the full site, here you go.
>> Speaking personally I find the way  terms like accessibility get used 
>> to often feel disturbing because the assumption is that everyone 
>> sharing a certain label, say disability, accommodates and are 
>> interchangeable for one another.  My understanding of disabilities 
>> studies is though that the barrier, in this case a site, is where the 
>> issue lies.  Present options on the menu so people can choose for 
>> whatever reason, and you do grand business...like Apple.
>>
>>
>>
>> On Sun, 25 Aug 2019, Linux for blind general discussion wrote:
>>
>>> Personally, all I want ouit of Amazon is the /option/ to use a 
>>> simpler site, with no legal beating over the head with a stick and 
>>> nobody jumping up and down and threatening to sue Amazon under 
>>> legislation. I'd rather Amazon do it off their own back. I'd rather, 
>>> say, use Amazon's mobile site that would be less cluttered and easy 
>>> to navigate (since I find Amazon insaley hard to use, even before 
>>> losing my sight it was a pain in the butt to get around honestly, I 
>>> don't know why they feel like they got to clutter up the pages so 
>>> much). I just want options, without legal precedent, and for the 
>>> record, I ain't in the US so all the talk of ADA does not apply 
>>> here, though given my country is just about gearing up to 
>>> spectacularly implode.....the ADA does not apply here. I actually 
>>> don't know if we have website accessibility reules here, if we do 
>>> I've rarely if ever seen them reported by the media here, the sole 
>>> sources I find are all US-centric.
>>>
>>> And that raises another point. Let's say that Japan adopts new 
>>> legislation. Amazon.jp will, for argument's sake, comply. Amazon.de 
>>> won't comply with the Japanese legislation because...Germany is not 
>>> Japan. Amazon.br won't because Brazil is not Germany. Point is, 
>>> every country has their own legislation they go by. Amazon can't 
>>> point to the ADA and say see, that's our global standard, because 
>>> every country treats accessibility differently, so if Amazon 
>>> /wanted/ to comply with all the rules, they'd need to go over every 
>>> single site in every country they operate in, and comply with the 
>>> local laws. Which would be slow going, and costly.
>>>
>>> On 25/08/2019 05:44, Linux for blind general discussion wrote:
>>>>  Amazon does business in other countries where such standard 
>>>> requirements
>>>>  do exist.
>>>>  Besides, Amazon  is not claiming that it need not be inclusive. 
>>>> Rather it
>>>>  is pretending, without  cross platform testing and actual attempts to
>>>>  provide a uniform experience, that it exists with them.
>>>>
>>>>
>>>>
>>>>  On Sat, 24 Aug 2019, Linux for blind general discussion wrote:
>>>>
>>>> >  Congress has not attached web accessibility guidelines to the 
>>>> ADA, >  guidelines were not established under President Obama and 
>>>> President >  Trump's administration is officially not pursuing any 
>>>> such guidelines. > 
>>>> https://www.boia.org/blog/is-website-accessibility-required-under-the-ada
>>>> > > >  Amazon is not covered under Section 508 of the 
>>>> Rehabilitation Act, as >  the Department of the Navy is.
>>>> > > >  Don't get me wrong, I think the ADA extends to web sites, 
>>>> and I think >  Domino's will lose, but the legal question has yet 
>>>> to be settled. This >  would all be moot if the DoJ under Obama or 
>>>> Trump had adopted the WCAD >  2.0 standards as the standards 
>>>> applying to web accessibility under the >  ADA.
>>>> > > >  On 8/24/19 3:02 PM, Linux for blind general discussion wrote:
>>>> > >   I predict Dominos will have its clock thoroughly cleaned.  > 
>>>> >  Precedent
>>>> > >   even in the Supreme Court isn't on their side.
>>>> > >   Congress made it clear what accessibility requirements are in 
>>>> the
>>>> > >   accessibility process and that happened in 2010. There's 
>>>> about 16
>>>> > >   technical requirements and a Preamble to Section 508 and this 
>>>> was
>>>> > >   something D.O.D. got measured against in 2012 when Obama 
>>>> required a
>>>> > >   D.O.D.-wide accessibility report.  End result of that was the 
>>>> > >  United
>>>> > >   States Navy was Accessibility Leader and the United States 
>>>> Navy was
>>>> > >   still left with serious problems and all other components had 
>>>> much > >  work
>>>> > >   to do.  I know about that having worked for the Navy during 
>>>> that > >  time.
>>>> > > > >   On Sat, 24 Aug 2019, Linux for blind general discussion 
>>>> wrote:
>>>> > > > > >   Date: Sat, 24 Aug 2019 15:53:37
>>>> > > >   From: Linux for blind general discussion 
>>>> <blinux-list@redhat.com>
>>>> > > >   To: blinux-list@redhat.com
>>>> > > >   Subject: Re: amazon?
>>>> > > > >   Amazon is definitely aware of Linux. They have apps 
>>>> running on > > Android >   and
>>>> > > >   even platforms that use Android as their OS. They support 
>>>> Linux > >  in AWS
>>>> > > >   including their own flavor of Linux. I'm sure their are 
>>>> some > >  staff at >  Amazon
>>>> > > >   who don't know about Linux, but that doesn't mean the 
>>>> company is > > unaware >   of or
>>>> > > >   doesn't care about Linux.
>>>> > > > > >   BTW, there is still a legal question as to whether a 
>>>> web site > > which > offers
>>>> > > >   products or services to the public needs to be accessible. 
>>>> The > > ADA >   doesn't
>>>> > > >   have companion guidelines on what it means for a site to be 
>>>> > > accessible >   and
>>>> > > >   Domino's is going to court to claim that the ADA doesn't 
>>>> require > >  them to >  make
>>>> > > >   their site or apps accessible. I think the ADA does apply 
>>>> to > >  public web >  sites,
>>>> > > >   and I think Domino's will lose, but that doesn't mean it 
>>>> isn't > >  still an >  open
>>>> > > >   legal question.
>>>> > > > > > >   On 8/24/19 2:11 PM, Linux for blind general 
>>>> discussion > > > > > > wrote:
>>>> > > > >   1. My comment regarding Linux is based on direct 
>>>> communications > > with > >   Amazon
>>>> > > > >   staff,? who have confessed not to have heard of it,and? 
>>>> who > >  have no > >  direct
>>>> > > > >   contact with their so called accessibility team when 
>>>> problems > >  arise.
>>>> > > > >   2. them properly compiled? elinks and links function with 
>>>> java > >  script.
>>>> > > > >   3.? Access is tied to interaction which is why even later 
>>>> > >  editions of > > lynx
>>>> > > > >   can manage some scripting, submit buttons for example.
>>>> > > > > > >   4. since adaptive technology is often a substitution 
>>>> for > >  the persons > > eyes,
>>>> > > > >   hands, brain, and the like, what gives you the right to 
>>>> state > > > > that
>>>> > > > >   technology choices are not tied to physical mandates?? 
>>>> How does > > your > > stance
>>>> > > > >   differ from those who claim that access need not exist at 
>>>> all,? > > or > >   that all
>>>> > > > >   those sharing? a label are the same?
>>>> > > > >   5. the names of access or other individuals at amazon > 
>>>> >  confirming your
>>>> > > > >   assumption here?? the legal stance is that if a site 
>>>> serves the > > > >   public, an
>>>> > > > >   individual can expect equal public access...which is why? 
>>>> > >  alternative
>>>> > > > >   doors??? are to exist? in the first place.
>>>> > > > >   How do you know what low graphics can or cannot do if you 
>>>> do > > not > >   follow
>>>> > > > >   their development?? This is about keyboard response which 
>>>> > >  exists in
>>>> > > > >   graphical? browsers like elinks and links.
>>>> > > > > > > > > > >   On Fri, 23 Aug 2019, Linux for blind general 
>>>> > >  discussion wrote:
>>>> > > > > > > >   I don't believe for a minute that the accessibility 
>>>> staff > >  at Amazon > > >  has
>>>> > > > > >   either forgotten or stopped caring about Linux 
>>>> accessibility. > > > > > Realistically
>>>> > > > > >   though, it is possible that they have stopped worrying 
>>>> about > > the > > > very small
>>>> > > > > >   number of people who still use text-based browsers and 
>>>> expect > > them > > > to work
>>>> > > > > >   for shopping, banking and other modern internet tasks. 
>>>> The > >  thing is > > > Linux
>>>> > > > > >   accessibility in 2019 != lynx/links/elinks 
>>>> accessibility. In > >  fact, > > >  this
>>>> > > > > >   hasn't been the case since about 2008 or so
>>>> > > > > >   .
>>>> > > > > >   Unfortunately, text-based browsers have not kept up 
>>>> with the > >  rest of > > > the
>>>> > > > > >   internet, and can't be expected to work well for most > 
>>>> > websites > > > without a
>>>> > > > > >   major overhaul, especially since they don't even 
>>>> support the > > latest > > > HTML5
>>>> > > > > >   standards, nor do they support accessibility standards 
>>>> that > > have > > > been in
>>>> > > > > >   place for years. Even w3m doesn't fully support the 
>>>> w3c's own > > > > > standards.
>>>> > > > > > > > >   Yes, I can see why some people may want these > 
>>>> >  light-weight and fast
>>>> > > > > >   browsers to work with Amazon, and yes, they should be 
>>>> made > >  aware of > > > the
>>>> > > > > >   problems that people are having. But to say that Amazon 
>>>> > >  doesn't care > > > about
>>>> > > > > >   Linux accessibility because their site doesn't work 
>>>> with a > > > > > text-based
>>>> > > > > >   browser is at best a gross exageration, and is at worst 
>>>> a > > grave > > >   disservice
>>>> > > > > >   to those of us who use Linux and a screen reader at the 
>>>> same > >  time.
>>>> > > > > >   Imetumwa kutoka miti
>>>> > > > > > > > > _______________________________________________
>>>> > > > > >   Blinux-list mailing list
>>>> > > > > >   Blinux-list@redhat.com
>>>> > > > > > https://www.redhat.com/mailman/listinfo/blinux-list
>>>> > > > > > > > > > > _______________________________________________
>>>> > > > >   Blinux-list mailing list
>>>> > > > >   Blinux-list@redhat.com
>>>> > > > > https://www.redhat.com/mailman/listinfo/blinux-list
>>>> > > > >  -- >  Christopher (CJ)
>>>> >  Chaltain at Gmail
>>>> > >  _______________________________________________
>>>> >  Blinux-list mailing list
>>>> >  Blinux-list@redhat.com
>>>> >  https://www.redhat.com/mailman/listinfo/blinux-list
>>>> > >
>>>>  _______________________________________________
>>>>  Blinux-list mailing list
>>>>  Blinux-list@redhat.com
>>>>  https://www.redhat.com/mailman/listinfo/blinux-list
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 
Christopher (CJ)
Chaltain at Gmail

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


--===============3372122937429527233==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
--===============3372122937429527233==--
